
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int ) ;
 int tapechar_major ;
 int unregister_chrdev_region (int ,int) ;

void
tapechar_exit(void)
{
 unregister_chrdev_region(MKDEV(tapechar_major, 0), 256);
}
