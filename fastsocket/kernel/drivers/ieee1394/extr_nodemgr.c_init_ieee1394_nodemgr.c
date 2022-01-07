
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * driver; } ;


 int class_register (int *) ;
 int class_unregister (int *) ;
 int driver_register (int *) ;
 int hpsb_register_highlevel (int *) ;
 TYPE_1__ nodemgr_dev_template_host ;
 int nodemgr_highlevel ;
 int nodemgr_mid_layer_driver ;
 int nodemgr_ne_class ;
 int nodemgr_ud_class ;

int init_ieee1394_nodemgr(void)
{
 int error;

 error = class_register(&nodemgr_ne_class);
 if (error)
  goto fail_ne;
 error = class_register(&nodemgr_ud_class);
 if (error)
  goto fail_ud;
 error = driver_register(&nodemgr_mid_layer_driver);
 if (error)
  goto fail_ml;

 nodemgr_dev_template_host.driver = &nodemgr_mid_layer_driver;

 hpsb_register_highlevel(&nodemgr_highlevel);
 return 0;

fail_ml:
 class_unregister(&nodemgr_ud_class);
fail_ud:
 class_unregister(&nodemgr_ne_class);
fail_ne:
 return error;
}
