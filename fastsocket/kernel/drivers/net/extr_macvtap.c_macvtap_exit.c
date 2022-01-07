
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACVTAP_NUM_DEVS ;
 int cdev_del (int *) ;
 int class_unregister (int ) ;
 int macvtap_cdev ;
 int macvtap_class ;
 int macvtap_link_ops ;
 int macvtap_major ;
 int rtnl_link_unregister (int *) ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static void macvtap_exit(void)
{
 rtnl_link_unregister(&macvtap_link_ops);
 class_unregister(macvtap_class);
 cdev_del(&macvtap_cdev);
 unregister_chrdev_region(macvtap_major, MACVTAP_NUM_DEVS);
}
