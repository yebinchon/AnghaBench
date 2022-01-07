
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;





 int EINVAL ;
 int gbWriteBase64Enable ;
 int gbWriteEnable ;

__attribute__((used)) static int flash_ioctl(struct inode *inodep, struct file *filep, unsigned int cmd, unsigned long arg)
{
 switch (cmd) {
 case 129:
  gbWriteBase64Enable = 0;
  gbWriteEnable = 0;
  break;

 case 128:
  gbWriteEnable = 1;
  break;

 case 130:
  gbWriteBase64Enable = 1;
  break;

 default:
  gbWriteBase64Enable = 0;
  gbWriteEnable = 0;
  return -EINVAL;
 }
 return 0;
}
