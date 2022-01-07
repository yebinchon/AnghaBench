
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEPROM_DATI ;
 int EEPROM_ECLK ;
 int EEPROM_EPROT ;
 int EEPROM_READ ;
 int __raw_readl (unsigned int*) ;
 int __raw_writel (int,unsigned int*) ;
 int delay () ;
 int eeprom_cmd (unsigned int*,int ,int) ;
 int eeprom_cs_off (unsigned int*) ;
 int eeprom_cs_on (unsigned int*) ;

unsigned short ip22_eeprom_read(unsigned int *ctrl, int reg)
{
 unsigned short res = 0;
 int i;

 __raw_writel(__raw_readl(ctrl) & ~EEPROM_EPROT, ctrl);
 eeprom_cs_on(ctrl);
 eeprom_cmd(ctrl, EEPROM_READ, reg);


 for (i = 0; i < 16; i++) {
  __raw_writel(__raw_readl(ctrl) & ~EEPROM_ECLK, ctrl);
  delay();
  __raw_writel(__raw_readl(ctrl) | EEPROM_ECLK, ctrl);
  delay();
  res <<= 1;
  if (__raw_readl(ctrl) & EEPROM_DATI)
   res |= 1;
 }

 eeprom_cs_off(ctrl);

 return res;
}
