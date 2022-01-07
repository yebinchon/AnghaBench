
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;


 int mca_device_write_pos (struct mca_device*,int,unsigned char) ;
 struct mca_device* mca_find_device_by_slot (int) ;

void mca_write_pos(int slot, int reg, unsigned char byte)
{
 struct mca_device *mca_dev = mca_find_device_by_slot(slot);

 if(!mca_dev)
  return;

 mca_device_write_pos(mca_dev, reg, byte);
}
