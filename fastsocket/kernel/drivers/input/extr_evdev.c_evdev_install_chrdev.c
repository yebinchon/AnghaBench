
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev {size_t minor; } ;


 struct evdev** evdev_table ;

__attribute__((used)) static int evdev_install_chrdev(struct evdev *evdev)
{




 evdev_table[evdev->minor] = evdev;
 return 0;
}
