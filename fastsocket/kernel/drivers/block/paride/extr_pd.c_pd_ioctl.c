
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_unit {int access; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct pd_unit* private_data; } ;



 int EINVAL ;
 int pd_eject ;
 int pd_special_command (struct pd_unit*,int ) ;

__attribute__((used)) static int pd_ioctl(struct block_device *bdev, fmode_t mode,
  unsigned int cmd, unsigned long arg)
{
 struct pd_unit *disk = bdev->bd_disk->private_data;

 switch (cmd) {
 case 128:
  if (disk->access == 1)
   pd_special_command(disk, pd_eject);
  return 0;
 default:
  return -EINVAL;
 }
}
