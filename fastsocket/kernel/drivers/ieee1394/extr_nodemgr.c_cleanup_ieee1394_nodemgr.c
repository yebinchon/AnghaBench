
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int driver_unregister (int *) ;
 int hpsb_unregister_highlevel (int *) ;
 int nodemgr_highlevel ;
 int nodemgr_mid_layer_driver ;
 int nodemgr_ne_class ;
 int nodemgr_ud_class ;

void cleanup_ieee1394_nodemgr(void)
{
 hpsb_unregister_highlevel(&nodemgr_highlevel);
 driver_unregister(&nodemgr_mid_layer_driver);
 class_unregister(&nodemgr_ud_class);
 class_unregister(&nodemgr_ne_class);
}
