
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 scalar_t__ vfd_is_open ;

__attribute__((used)) static int briq_panel_release(struct inode *ino, struct file *filep)
{
 if (!vfd_is_open)
  return -ENODEV;

 vfd_is_open = 0;

 return 0;
}
