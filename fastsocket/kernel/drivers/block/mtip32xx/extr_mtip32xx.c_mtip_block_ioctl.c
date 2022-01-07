
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int dd_flag; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct driver_data* private_data; } ;



 int CAP_SYS_ADMIN ;
 int EACCES ;
 int ENOTTY ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int capable (int ) ;
 int mtip_hw_ioctl (struct driver_data*,unsigned int,unsigned long) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mtip_block_ioctl(struct block_device *dev,
       fmode_t mode,
       unsigned cmd,
       unsigned long arg)
{
 struct driver_data *dd = dev->bd_disk->private_data;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (!dd)
  return -ENOTTY;

 if (unlikely(test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag)))
  return -ENOTTY;

 switch (cmd) {
 case 128:
  return -ENOTTY;
 default:
  return mtip_hw_ioctl(dd, cmd, arg);
 }
}
