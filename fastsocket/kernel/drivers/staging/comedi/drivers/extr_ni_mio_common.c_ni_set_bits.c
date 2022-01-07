
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int ni_set_bitfield (struct comedi_device*,int,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ni_set_bits(struct comedi_device *dev, int reg,
          unsigned bits, unsigned value)
{
 unsigned bit_values;

 if (value)
  bit_values = bits;
 else
  bit_values = 0;
 ni_set_bitfield(dev, reg, bits, bit_values);
}
