
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int MACVTAP_NUM_DEVS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 int cdev_add (int *,int ,int ) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 int class_create (int ,char*) ;
 int class_unregister (int ) ;
 int macvlan_link_register (int *) ;
 int macvtap_cdev ;
 int macvtap_class ;
 int macvtap_fops ;
 int macvtap_link_ops ;
 int macvtap_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static int macvtap_init(void)
{
 int err;

 err = alloc_chrdev_region(&macvtap_major, 0,
    MACVTAP_NUM_DEVS, "macvtap");
 if (err)
  goto out1;

 cdev_init(&macvtap_cdev, &macvtap_fops);
 err = cdev_add(&macvtap_cdev, macvtap_major, MACVTAP_NUM_DEVS);
 if (err)
  goto out2;

 macvtap_class = class_create(THIS_MODULE, "macvtap");
 if (IS_ERR(macvtap_class)) {
  err = PTR_ERR(macvtap_class);
  goto out3;
 }

 err = macvlan_link_register(&macvtap_link_ops);
 if (err)
  goto out4;

 return 0;

out4:
 class_unregister(macvtap_class);
out3:
 cdev_del(&macvtap_cdev);
out2:
 unregister_chrdev_region(macvtap_major, MACVTAP_NUM_DEVS);
out1:
 return err;
}
