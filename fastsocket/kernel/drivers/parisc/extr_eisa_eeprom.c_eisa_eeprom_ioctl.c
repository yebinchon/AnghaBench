
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static int eisa_eeprom_ioctl(struct inode *inode, struct file *file,
      unsigned int cmd,
      unsigned long arg)
{
 return -ENOTTY;
}
