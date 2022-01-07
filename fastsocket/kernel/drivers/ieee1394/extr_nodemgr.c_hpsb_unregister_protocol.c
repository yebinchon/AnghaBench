
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_protocol_driver {int driver; } ;


 int driver_unregister (int *) ;
 int nodemgr_remove_drv_files (struct hpsb_protocol_driver*) ;

void hpsb_unregister_protocol(struct hpsb_protocol_driver *driver)
{
 nodemgr_remove_drv_files(driver);


 driver_unregister(&driver->driver);
}
