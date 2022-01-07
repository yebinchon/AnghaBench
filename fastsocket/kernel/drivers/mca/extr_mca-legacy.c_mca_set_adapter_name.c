
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;


 int mca_device_set_name (struct mca_device*,char*) ;
 struct mca_device* mca_find_device_by_slot (int) ;

void mca_set_adapter_name(int slot, char* name)
{
 struct mca_device *mca_dev = mca_find_device_by_slot(slot);

 if(!mca_dev)
  return;

 mca_device_set_name(mca_dev, name);
}
