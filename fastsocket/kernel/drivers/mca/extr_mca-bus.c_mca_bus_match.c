
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_driver {unsigned short* id_table; unsigned short const integrated_id; } ;
struct mca_device {unsigned short const pos_id; int index; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct mca_device* to_mca_device (struct device*) ;
 struct mca_driver* to_mca_driver (struct device_driver*) ;

__attribute__((used)) static int mca_bus_match (struct device *dev, struct device_driver *drv)
{
 struct mca_device *mca_dev = to_mca_device (dev);
 struct mca_driver *mca_drv = to_mca_driver (drv);
 const unsigned short *mca_ids = mca_drv->id_table;
 int i = 0;

 if (mca_ids) {
  for(i = 0; mca_ids[i]; i++) {
   if (mca_ids[i] == mca_dev->pos_id) {
    mca_dev->index = i;
    return 1;
   }
  }
 }



 if (mca_drv->integrated_id && mca_dev->pos_id ==
     mca_drv->integrated_id) {
  mca_dev->index = i;
  return 1;
 }
 return 0;
}
