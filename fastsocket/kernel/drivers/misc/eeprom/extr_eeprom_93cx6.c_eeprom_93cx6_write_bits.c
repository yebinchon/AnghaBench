
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct eeprom_93cx6 {int reg_data_in; int (* register_write ) (struct eeprom_93cx6*) ;scalar_t__ reg_data_out; int (* register_read ) (struct eeprom_93cx6*) ;} ;


 int eeprom_93cx6_pulse_high (struct eeprom_93cx6*) ;
 int eeprom_93cx6_pulse_low (struct eeprom_93cx6*) ;
 int stub1 (struct eeprom_93cx6*) ;
 int stub2 (struct eeprom_93cx6*) ;
 int stub3 (struct eeprom_93cx6*) ;

__attribute__((used)) static void eeprom_93cx6_write_bits(struct eeprom_93cx6 *eeprom,
 const u16 data, const u16 count)
{
 unsigned int i;

 eeprom->register_read(eeprom);




 eeprom->reg_data_in = 0;
 eeprom->reg_data_out = 0;




 for (i = count; i > 0; i--) {



  eeprom->reg_data_in = !!(data & (1 << (i - 1)));




  eeprom->register_write(eeprom);




  eeprom_93cx6_pulse_high(eeprom);
  eeprom_93cx6_pulse_low(eeprom);
 }

 eeprom->reg_data_in = 0;
 eeprom->register_write(eeprom);
}
