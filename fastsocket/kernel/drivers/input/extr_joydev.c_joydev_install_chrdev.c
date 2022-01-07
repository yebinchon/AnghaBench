
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {size_t minor; } ;


 struct joydev** joydev_table ;

__attribute__((used)) static int joydev_install_chrdev(struct joydev *joydev)
{
 joydev_table[joydev->minor] = joydev;
 return 0;
}
