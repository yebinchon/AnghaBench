
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int device_id; } ;


 int n_ni_boards ;
 TYPE_1__* ni_boards ;
 int ni_read_eeprom (struct comedi_device*,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int ni_getboardtype(struct comedi_device *dev)
{
 int device_id = ni_read_eeprom(dev, 511);
 int i;

 for (i = 0; i < n_ni_boards; i++) {
  if (ni_boards[i].device_id == device_id) {
   return i;
  }
 }
 if (device_id == 255) {
  printk(" can't find board\n");
 } else if (device_id == 0) {
  printk(" EEPROM read error (?) or device not found\n");
 } else {
  printk(" unknown device ID %d -- contact author\n", device_id);
 }
 return -1;
}
