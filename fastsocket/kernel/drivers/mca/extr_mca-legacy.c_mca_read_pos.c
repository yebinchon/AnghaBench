
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;


 unsigned char mca_device_read_pos (struct mca_device*,int) ;
 struct mca_device* mca_find_device_by_slot (int) ;

unsigned char mca_read_pos(int slot, int reg)
{
 struct mca_device *mca_dev = mca_find_device_by_slot(slot);

 if(!mca_dev)
  return 0;

 return mca_device_read_pos(mca_dev, reg);
}
