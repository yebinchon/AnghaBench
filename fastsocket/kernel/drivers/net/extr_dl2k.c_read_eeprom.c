
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEP_BUSY ;
 int EEP_READ ;
 scalar_t__ EepromCtrl ;
 scalar_t__ EepromData ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int
read_eeprom (long ioaddr, int eep_addr)
{
 int i = 1000;
 outw (EEP_READ | (eep_addr & 0xff), ioaddr + EepromCtrl);
 while (i-- > 0) {
  if (!(inw (ioaddr + EepromCtrl) & EEP_BUSY)) {
   return inw (ioaddr + EepromData);
  }
 }
 return 0;
}
