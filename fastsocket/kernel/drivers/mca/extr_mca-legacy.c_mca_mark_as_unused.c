
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;


 int mca_device_set_claim (struct mca_device*,int ) ;
 struct mca_device* mca_find_device_by_slot (int) ;

void mca_mark_as_unused(int slot)
{
 struct mca_device *mca_dev = mca_find_device_by_slot(slot);

 if(!mca_dev)
  return;

 mca_device_set_claim(mca_dev, 0);
}
