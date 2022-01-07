
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmu_cache {int valid; unsigned char* buffer; unsigned int block; int jiffies_atc; } ;
struct mtd_info {struct mdev_part* priv; } ;
struct memcard {int blocklen; int readcnt; unsigned char* blockread; TYPE_1__* parts; } ;
struct mdev_part {int partition; struct maple_device* mdev; } ;
struct maple_device {int unit; int port; int dev; TYPE_2__* mq; int busy; int maple_wait; } ;
typedef int __be32 ;
struct TYPE_4__ {unsigned char* sendbuf; int list; } ;
struct TYPE_3__ {struct vmu_cache* pcache; } ;


 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int HZ ;
 int MAPLE_COMMAND_BREAD ;
 int MAPLE_FUNC_MEMCARD ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_notice (int *,char*,int ,int ,...) ;
 int dev_warn (int *,char*,int ,int ,unsigned int) ;
 int jiffies ;
 int kfree (unsigned char*) ;
 void* kmalloc (int,int ) ;
 int list_del_init (int *) ;
 int maple_add_packet (struct maple_device*,int ,int ,int,int *) ;
 struct memcard* maple_get_drvdata (struct maple_device*) ;
 int maple_getcond_callback (struct maple_device*,int ,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int vmu_blockread ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int maple_vmu_read_block(unsigned int num, unsigned char *buf,
 struct mtd_info *mtd)
{
 struct memcard *card;
 struct mdev_part *mpart;
 struct maple_device *mdev;
 int partition, error = 0, x, wait;
 unsigned char *blockread = ((void*)0);
 struct vmu_cache *pcache;
 __be32 sendbuf;

 mpart = mtd->priv;
 mdev = mpart->mdev;
 partition = mpart->partition;
 card = maple_get_drvdata(mdev);
 pcache = card->parts[partition].pcache;
 pcache->valid = 0;


 if (!pcache->buffer) {
  pcache->buffer = kmalloc(card->blocklen, GFP_KERNEL);
  if (!pcache->buffer) {
   dev_err(&mdev->dev, "VMU at (%d, %d) - read fails due"
    " to lack of memory\n", mdev->port,
    mdev->unit);
   error = -ENOMEM;
   goto outB;
  }
 }






 for (x = 0; x < card->readcnt; x++) {
  sendbuf = cpu_to_be32(partition << 24 | x << 16 | num);

  if (atomic_read(&mdev->busy) == 1) {
   wait_event_interruptible_timeout(mdev->maple_wait,
    atomic_read(&mdev->busy) == 0, HZ);
   if (atomic_read(&mdev->busy) == 1) {
    dev_notice(&mdev->dev, "VMU at (%d, %d)"
     " is busy\n", mdev->port, mdev->unit);
    error = -EAGAIN;
    goto outB;
   }
  }

  atomic_set(&mdev->busy, 1);
  blockread = kmalloc(card->blocklen/card->readcnt, GFP_KERNEL);
  if (!blockread) {
   error = -ENOMEM;
   atomic_set(&mdev->busy, 0);
   goto outB;
  }
  card->blockread = blockread;

  maple_getcond_callback(mdev, vmu_blockread, 0,
   MAPLE_FUNC_MEMCARD);
  error = maple_add_packet(mdev, MAPLE_FUNC_MEMCARD,
    MAPLE_COMMAND_BREAD, 2, &sendbuf);

  wait = wait_event_interruptible_timeout(mdev->maple_wait,
   (atomic_read(&mdev->busy) == 0 ||
   atomic_read(&mdev->busy) == 2), HZ * 3);





  if (error || atomic_read(&mdev->busy) == 2) {
   if (atomic_read(&mdev->busy) == 2)
    error = -ENXIO;
   atomic_set(&mdev->busy, 0);
   card->blockread = ((void*)0);
   goto outA;
  }
  if (wait == 0 || wait == -ERESTARTSYS) {
   card->blockread = ((void*)0);
   atomic_set(&mdev->busy, 0);
   error = -EIO;
   list_del_init(&(mdev->mq->list));
   kfree(mdev->mq->sendbuf);
   mdev->mq->sendbuf = ((void*)0);
   if (wait == -ERESTARTSYS) {
    dev_warn(&mdev->dev, "VMU read on (%d, %d)"
     " interrupted on block 0x%X\n",
     mdev->port, mdev->unit, num);
   } else
    dev_notice(&mdev->dev, "VMU read on (%d, %d)"
     " timed out on block 0x%X\n",
     mdev->port, mdev->unit, num);
   goto outA;
  }

  memcpy(buf + (card->blocklen/card->readcnt) * x, blockread,
   card->blocklen/card->readcnt);

  memcpy(pcache->buffer + (card->blocklen/card->readcnt) * x,
   card->blockread, card->blocklen/card->readcnt);
  card->blockread = ((void*)0);
  pcache->block = num;
  pcache->jiffies_atc = jiffies;
  pcache->valid = 1;
  kfree(blockread);
 }

 return error;

outA:
 kfree(blockread);
outB:
 return error;
}
