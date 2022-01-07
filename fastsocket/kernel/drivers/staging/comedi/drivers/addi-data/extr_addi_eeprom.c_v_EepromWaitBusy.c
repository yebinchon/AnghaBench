
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (unsigned short) ;

void v_EepromWaitBusy(unsigned short w_PCIBoardEepromAddress)
{

 unsigned char b_EepromBusy = 0;

 do
 {
  b_EepromBusy = inb(w_PCIBoardEepromAddress + 0x3F);
  b_EepromBusy = b_EepromBusy & 0x80;

 } while (b_EepromBusy == 0x80);

}
