
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int driver; } ;


 int driver_attr_new_id ;
 int driver_remove_file (int *,int *) ;
 int driver_unregister (int *) ;
 int hid_free_dynids (struct hid_driver*) ;

void hid_unregister_driver(struct hid_driver *hdrv)
{
 driver_remove_file(&hdrv->driver, &driver_attr_new_id);
 driver_unregister(&hdrv->driver);
 hid_free_dynids(hdrv);
}
