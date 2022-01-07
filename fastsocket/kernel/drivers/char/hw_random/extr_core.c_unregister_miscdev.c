
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int this_device; } ;


 int dev_attr_rng_available ;
 int dev_attr_rng_current ;
 int device_remove_file (int ,int *) ;
 int misc_deregister (TYPE_1__*) ;
 TYPE_1__ rng_miscdev ;

__attribute__((used)) static void unregister_miscdev(void)
{
 device_remove_file(rng_miscdev.this_device, &dev_attr_rng_available);
 device_remove_file(rng_miscdev.this_device, &dev_attr_rng_current);
 misc_deregister(&rng_miscdev);
}
