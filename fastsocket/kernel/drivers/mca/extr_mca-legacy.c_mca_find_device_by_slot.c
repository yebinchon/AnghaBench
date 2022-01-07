
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_find_device_by_slot_info {int slot; struct mca_device* mca_dev; } ;
struct mca_device {int dummy; } ;


 int bus_for_each_dev (int *,int *,struct mca_find_device_by_slot_info*,int ) ;
 int mca_bus_type ;
 int mca_find_device_by_slot_callback ;

struct mca_device *mca_find_device_by_slot(int slot)
{
 struct mca_find_device_by_slot_info info;

 info.slot = slot;
 info.mca_dev = ((void*)0);

 bus_for_each_dev(&mca_bus_type, ((void*)0), &info, mca_find_device_by_slot_callback);

 return info.mca_dev;
}
