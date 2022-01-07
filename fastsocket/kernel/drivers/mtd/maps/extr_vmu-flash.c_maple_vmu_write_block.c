
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct mdev_part* priv; } ;
struct memcard {int blocklen; int writecnt; } ;
struct mdev_part {int partition; struct maple_device* mdev; } ;
struct maple_device {int unit; int port; int dev; TYPE_1__* mq; int busy; int maple_wait; } ;
typedef int __be32 ;
struct TYPE_2__ {int list; int * sendbuf; } ;


 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int HZ ;
 int MAPLE_COMMAND_BWRITE ;
 int MAPLE_FUNC_MEMCARD ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_notice (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ,int ,unsigned int,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int list_del_init (int *) ;
 int maple_add_packet (struct maple_device*,int ,int ,int,int *) ;
 struct memcard* maple_get_drvdata (struct maple_device*) ;
 int memcpy (int *,unsigned char const*,int) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int maple_vmu_write_block(unsigned int num, const unsigned char *buf,
 struct mtd_info *mtd)
{
 struct memcard *card;
 struct mdev_part *mpart;
 struct maple_device *mdev;
 int partition, error, locking, x, phaselen, wait;
 __be32 *sendbuf;

 mpart = mtd->priv;
 mdev = mpart->mdev;
 partition = mpart->partition;
 card = maple_get_drvdata(mdev);

 phaselen = card->blocklen/card->writecnt;

 sendbuf = kmalloc(phaselen + 4, GFP_KERNEL);
 if (!sendbuf) {
  error = -ENOMEM;
  goto fail_nosendbuf;
 }
 for (x = 0; x < card->writecnt; x++) {
  sendbuf[0] = cpu_to_be32(partition << 24 | x << 16 | num);
  memcpy(&sendbuf[1], buf + phaselen * x, phaselen);


  if (atomic_read(&mdev->busy) == 1) {
   wait_event_interruptible_timeout(mdev->maple_wait,
    atomic_read(&mdev->busy) == 0, HZ);
   if (atomic_read(&mdev->busy) == 1) {
    error = -EBUSY;
    dev_notice(&mdev->dev, "VMU write at (%d, %d)"
     "failed - device is busy\n",
     mdev->port, mdev->unit);
    goto fail_nolock;
   }
  }
  atomic_set(&mdev->busy, 1);

  locking = maple_add_packet(mdev, MAPLE_FUNC_MEMCARD,
   MAPLE_COMMAND_BWRITE, phaselen / 4 + 2, sendbuf);
  wait = wait_event_interruptible_timeout(mdev->maple_wait,
   atomic_read(&mdev->busy) == 0, HZ/10);
  if (locking) {
   error = -EIO;
   atomic_set(&mdev->busy, 0);
   goto fail_nolock;
  }
  if (atomic_read(&mdev->busy) == 2) {
   atomic_set(&mdev->busy, 0);
  } else if (wait == 0 || wait == -ERESTARTSYS) {
   error = -EIO;
   dev_warn(&mdev->dev, "Write at (%d, %d) of block"
    " 0x%X at phase %d failed: could not"
    " communicate with VMU", mdev->port,
    mdev->unit, num, x);
   atomic_set(&mdev->busy, 0);
   kfree(mdev->mq->sendbuf);
   mdev->mq->sendbuf = ((void*)0);
   list_del_init(&(mdev->mq->list));
   goto fail_nolock;
  }
 }
 kfree(sendbuf);

 return card->blocklen;

fail_nolock:
 kfree(sendbuf);
fail_nosendbuf:
 dev_err(&mdev->dev, "VMU (%d, %d): write failed\n", mdev->port,
  mdev->unit);
 return error;
}
