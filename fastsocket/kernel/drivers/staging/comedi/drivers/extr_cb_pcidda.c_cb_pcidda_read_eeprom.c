
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dac; } ;


 scalar_t__ DACALIBRATION2 ;
 unsigned int DESELECT_CALDAC_BIT (unsigned int) ;
 unsigned int DESELECT_REF_DAC_BIT ;
 unsigned int DUMMY_BIT ;
 unsigned int SELECT_EEPROM_BIT ;
 unsigned int cb_pcidda_serial_in (struct comedi_device*) ;
 int cb_pcidda_serial_out (struct comedi_device*,int const,int const) ;
 TYPE_1__* devpriv ;
 int outw_p (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int cb_pcidda_read_eeprom(struct comedi_device *dev,
       unsigned int address)
{
 unsigned int i;
 unsigned int cal2_bits;
 unsigned int value;
 const int max_num_caldacs = 4;
 const int read_instruction = 0x6;
 const int instruction_length = 3;
 const int address_length = 8;


 cal2_bits = SELECT_EEPROM_BIT | DESELECT_REF_DAC_BIT | DUMMY_BIT;

 for (i = 0; i < max_num_caldacs; i++) {
  cal2_bits |= DESELECT_CALDAC_BIT(i);
 }
 outw_p(cal2_bits, devpriv->dac + DACALIBRATION2);


 cb_pcidda_serial_out(dev, read_instruction, instruction_length);

 cb_pcidda_serial_out(dev, address, address_length);

 value = cb_pcidda_serial_in(dev);


 cal2_bits &= ~SELECT_EEPROM_BIT;
 outw_p(cal2_bits, devpriv->dac + DACALIBRATION2);

 return value;
}
