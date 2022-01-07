
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int EIO ;
 int ETIME ;
 int dt2801_reset (struct comedi_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static int dt2801_error(struct comedi_device *dev, int stat)
{
 if (stat < 0) {
  if (stat == -ETIME) {
   printk("dt2801: timeout\n");
  } else {
   printk("dt2801: error %d\n", stat);
  }
  return stat;
 }
 printk("dt2801: error status 0x%02x, resetting...\n", stat);

 dt2801_reset(dev);
 dt2801_reset(dev);

 return -EIO;
}
