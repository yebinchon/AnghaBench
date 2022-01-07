
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_DigitalOutputHeader {int w_Nchannel; } ;


 int w_EepromReadWord (unsigned short,char*,int) ;

int i_EepromReadDigitalOutputHeader(unsigned short w_PCIBoardEepromAddress,
 char *pc_PCIChipInformation, unsigned short w_Address,
 struct str_DigitalOutputHeader *s_Header)
{

 s_Header->w_Nchannel =
  w_EepromReadWord(w_PCIBoardEepromAddress, pc_PCIChipInformation,
  0x100 + w_Address + 6);
 return 0;
}
