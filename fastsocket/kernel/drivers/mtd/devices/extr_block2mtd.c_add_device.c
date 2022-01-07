
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; int bd_dev; } ;
struct TYPE_4__ {char* name; int size; int erasesize; int writesize; int index; int owner; struct block2mtd_dev* priv; int read; int sync; int writev; int write; int erase; int flags; int type; } ;
struct block2mtd_dev {TYPE_2__ mtd; int list; struct block_device* blkdev; int write_mutex; } ;
typedef scalar_t__ dev_t ;
struct TYPE_3__ {int i_size; } ;


 int ERROR (char*,...) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int INFO (char*,int ,char*,int,int) ;
 scalar_t__ IS_ERR (struct block_device*) ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ MTD_BLOCK_MAJOR ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int PAGE_MASK ;
 int THIS_MODULE ;
 scalar_t__ add_mtd_device (TYPE_2__*) ;
 int blkmtd_device_list ;
 int block2mtd_erase ;
 int block2mtd_free_device (struct block2mtd_dev*) ;
 int block2mtd_read ;
 int block2mtd_sync ;
 int block2mtd_write ;
 int default_mtd_writev ;
 char* kmalloc (int,int ) ;
 struct block2mtd_dev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 scalar_t__ name_to_dev_t (char*) ;
 struct block_device* open_bdev_exclusive (char*,int,int *) ;
 struct block_device* open_by_devnum (scalar_t__,int) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static struct block2mtd_dev *add_device(char *devname, int erase_size)
{
 struct block_device *bdev;
 struct block2mtd_dev *dev;
 char *name;

 if (!devname)
  return ((void*)0);

 dev = kzalloc(sizeof(struct block2mtd_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);


 bdev = open_bdev_exclusive(devname, FMODE_READ|FMODE_WRITE, ((void*)0));

 if (IS_ERR(bdev)) {




  dev_t devt = name_to_dev_t(devname);
  if (devt) {
   bdev = open_by_devnum(devt, FMODE_WRITE | FMODE_READ);
  }
 }


 if (IS_ERR(bdev)) {
  ERROR("error: cannot open device %s", devname);
  goto devinit_err;
 }
 dev->blkdev = bdev;

 if (MAJOR(bdev->bd_dev) == MTD_BLOCK_MAJOR) {
  ERROR("attempting to use an MTD device as a block device");
  goto devinit_err;
 }

 mutex_init(&dev->write_mutex);



 name = kmalloc(sizeof("block2mtd: ") + strlen(devname) + 1,
   GFP_KERNEL);
 if (!name)
  goto devinit_err;

 sprintf(name, "block2mtd: %s", devname);
 dev->mtd.name = name;

 dev->mtd.size = dev->blkdev->bd_inode->i_size & PAGE_MASK;
 dev->mtd.erasesize = erase_size;
 dev->mtd.writesize = 1;
 dev->mtd.type = MTD_RAM;
 dev->mtd.flags = MTD_CAP_RAM;
 dev->mtd.erase = block2mtd_erase;
 dev->mtd.write = block2mtd_write;
 dev->mtd.writev = default_mtd_writev;
 dev->mtd.sync = block2mtd_sync;
 dev->mtd.read = block2mtd_read;
 dev->mtd.priv = dev;
 dev->mtd.owner = THIS_MODULE;

 if (add_mtd_device(&dev->mtd)) {

  goto devinit_err;
 }
 list_add(&dev->list, &blkmtd_device_list);
 INFO("mtd%d: [%s] erase_size = %dKiB [%d]", dev->mtd.index,
   dev->mtd.name + strlen("block2mtd: "),
   dev->mtd.erasesize >> 10, dev->mtd.erasesize);
 return dev;

devinit_err:
 block2mtd_free_device(dev);
 return ((void*)0);
}
