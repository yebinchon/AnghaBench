
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ TUL_GCTRL ;
 int TUL_GCTRL_EEPROM_BIT ;
 int i91unvram ;
 int * i91unvramp ;
 int inb (scalar_t__) ;
 int initio_se2_rd_all (unsigned long) ;
 int initio_se2_update_all (unsigned long) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void initio_read_eeprom(unsigned long base)
{
 u8 gctrl;

 i91unvramp = &i91unvram;

 gctrl = inb(base + TUL_GCTRL);
 outb(gctrl | TUL_GCTRL_EEPROM_BIT, base + TUL_GCTRL);
 if (initio_se2_rd_all(base) != 1) {
  initio_se2_update_all(base);
  initio_se2_rd_all(base);
 }

 gctrl = inb(base + TUL_GCTRL);
 outb(gctrl & ~TUL_GCTRL_EEPROM_BIT, base + TUL_GCTRL);
}
