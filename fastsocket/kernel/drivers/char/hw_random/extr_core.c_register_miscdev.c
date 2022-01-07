
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this_device; } ;


 int dev_attr_rng_available ;
 int dev_attr_rng_current ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int misc_deregister (TYPE_1__*) ;
 int misc_register (TYPE_1__*) ;
 TYPE_1__ rng_miscdev ;

__attribute__((used)) static int register_miscdev(void)
{
 int err;

 err = misc_register(&rng_miscdev);
 if (err)
  goto out;
 err = device_create_file(rng_miscdev.this_device,
     &dev_attr_rng_current);
 if (err)
  goto err_misc_dereg;
 err = device_create_file(rng_miscdev.this_device,
     &dev_attr_rng_available);
 if (err)
  goto err_remove_current;
out:
 return err;

err_remove_current:
 device_remove_file(rng_miscdev.this_device, &dev_attr_rng_current);
err_misc_dereg:
 misc_deregister(&rng_miscdev);
 goto out;
}
