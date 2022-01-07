
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct comedi_device {int dummy; } ;


 int DEBUG_PRINT (char*,int) ;
 int i2c_set_scl (struct comedi_device*,int) ;
 int i2c_set_sda (struct comedi_device*,int) ;

__attribute__((used)) static void i2c_write_byte(struct comedi_device *dev, uint8_t byte)
{
 uint8_t bit;
 unsigned int num_bits = 8;

 DEBUG_PRINT("writing to i2c byte 0x%x\n", byte);

 for (bit = 1 << (num_bits - 1); bit; bit >>= 1) {
  i2c_set_scl(dev, 0);
  if ((byte & bit))
   i2c_set_sda(dev, 1);
  else
   i2c_set_sda(dev, 0);
  i2c_set_scl(dev, 1);
 }
}
