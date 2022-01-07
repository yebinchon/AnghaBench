
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nbd_device {scalar_t__ magic; int tx_lock; TYPE_2__* disk; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_4__ {int disk_name; } ;
struct TYPE_3__ {struct nbd_device* private_data; } ;


 int BUG_ON (int) ;
 int CAP_SYS_ADMIN ;
 int DBG_IOCTL ;
 int EPERM ;
 scalar_t__ LO_MAGIC ;
 int __nbd_ioctl (struct block_device*,struct nbd_device*,unsigned int,unsigned long) ;
 int capable (int ) ;
 int dprintk (int ,char*,int ,int ,unsigned int,unsigned long) ;
 int ioctl_cmd_to_ascii (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nbd_ioctl(struct block_device *bdev, fmode_t mode,
       unsigned int cmd, unsigned long arg)
{
 struct nbd_device *lo = bdev->bd_disk->private_data;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 BUG_ON(lo->magic != LO_MAGIC);


 dprintk(DBG_IOCTL, "%s: nbd_ioctl cmd=%s(0x%x) arg=%lu\n",
   lo->disk->disk_name, ioctl_cmd_to_ascii(cmd), cmd, arg);

 mutex_lock(&lo->tx_lock);
 error = __nbd_ioctl(bdev, lo, cmd, arg);
 mutex_unlock(&lo->tx_lock);

 return error;
}
