
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVNAME ;
 int major ;
 int unregister_chrdev (int ,int ) ;

__attribute__((used)) static void divas_unregister_chrdev(void)
{
 unregister_chrdev(major, DEVNAME);
}
