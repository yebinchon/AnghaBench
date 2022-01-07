
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_range; int * eeprom_data; } ;


 int caldac_number (unsigned int) ;
 int cb_pcidda_write_caldac (struct comedi_device*,int ,int ,unsigned int) ;
 int coarse_gain_channel (unsigned int) ;
 int coarse_offset_channel (unsigned int) ;
 TYPE_1__* devpriv ;
 unsigned int eeprom_coarse_byte (int ) ;
 unsigned int eeprom_fine_byte (int ) ;
 int fine_gain_channel (unsigned int) ;
 int fine_offset_channel (unsigned int) ;
 size_t gain_eeprom_address (unsigned int,unsigned int) ;
 size_t offset_eeprom_address (unsigned int,unsigned int) ;

__attribute__((used)) static void cb_pcidda_calibrate(struct comedi_device *dev, unsigned int channel,
    unsigned int range)
{
 unsigned int coarse_offset, fine_offset, coarse_gain, fine_gain;


 devpriv->ao_range[channel] = range;


 coarse_offset =
     eeprom_coarse_byte(devpriv->eeprom_data
          [offset_eeprom_address(channel, range)]);
 fine_offset =
     eeprom_fine_byte(devpriv->eeprom_data
        [offset_eeprom_address(channel, range)]);
 coarse_gain =
     eeprom_coarse_byte(devpriv->eeprom_data
          [gain_eeprom_address(channel, range)]);
 fine_gain =
     eeprom_fine_byte(devpriv->eeprom_data
        [gain_eeprom_address(channel, range)]);


 cb_pcidda_write_caldac(dev, caldac_number(channel),
          coarse_offset_channel(channel), coarse_offset);
 cb_pcidda_write_caldac(dev, caldac_number(channel),
          fine_offset_channel(channel), fine_offset);
 cb_pcidda_write_caldac(dev, caldac_number(channel),
          coarse_gain_channel(channel), coarse_gain);
 cb_pcidda_write_caldac(dev, caldac_number(channel),
          fine_gain_channel(channel), fine_gain);
}
