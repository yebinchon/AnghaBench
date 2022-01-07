
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {unsigned char* pos; } ;



unsigned char mca_device_read_stored_pos(struct mca_device *mca_dev, int reg)
{
 if(reg < 0 || reg >= 8)
  return 0;

 return mca_dev->pos[reg];
}
