
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DLINK_EEPROM ;
 short EE_ADOT ;
 short EE_ASIC ;
 short EE_CK ;
 short EE_CS ;
 short EE_DI ;
 short EE_DO ;
 int EE_READ_CMD ;
 int outb (short,unsigned int) ;
 int outb_p (short,unsigned int) ;
 short read_eeprom (unsigned int,int) ;

__attribute__((used)) static void write_asic(unsigned int ioaddr, int location, short asic_data)
{
 int i;
 unsigned int ee_addr = ioaddr + DLINK_EEPROM;
 short dataval;
 int read_cmd = location | (EE_READ_CMD << 8);

 asic_data |= read_eeprom(ioaddr, location);

 outb(0, ee_addr);
 outb(EE_ASIC|EE_CS|EE_DI, ee_addr);

 read_cmd = read_cmd >> 1;


 for (i = 9; i >= 0; i--) {
  dataval = (read_cmd & (1 << i)) ? EE_DO : 0;
  outb_p(EE_ASIC|EE_CS|EE_DI|dataval, ee_addr);
  outb_p(EE_ASIC|EE_CS|EE_DI|dataval|EE_CK, ee_addr);
  outb_p(EE_ASIC|EE_CS|EE_DI|dataval, ee_addr);
 }

 outb(EE_ASIC|EE_CS, ee_addr);
 outb(EE_ASIC|EE_CS|EE_CK, ee_addr);
 outb(EE_ASIC|EE_CS, ee_addr);

 for (i = 15; i >= 0; i--) {
  dataval = (asic_data & (1 << i)) ? EE_ADOT : 0;
  outb_p(EE_ASIC|EE_CS|dataval, ee_addr);
  outb_p(EE_ASIC|EE_CS|dataval|EE_CK, ee_addr);
  outb_p(EE_ASIC|EE_CS|dataval, ee_addr);
 }


 outb(EE_ASIC|EE_DI, ee_addr);
 outb(EE_ASIC|EE_DI| EE_CK, ee_addr);
 outb(EE_ASIC|EE_DI, ee_addr);

 outb(0, ee_addr);
}
