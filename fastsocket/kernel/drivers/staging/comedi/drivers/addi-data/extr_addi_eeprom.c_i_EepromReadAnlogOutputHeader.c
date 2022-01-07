
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short w_Nchannel; unsigned char b_Resolution; } ;
typedef TYPE_1__ str_AnalogOutputHeader ;


 unsigned short w_EepromReadWord (unsigned short,char*,int) ;

int i_EepromReadAnlogOutputHeader(unsigned short w_PCIBoardEepromAddress,
 char *pc_PCIChipInformation, unsigned short w_Address,
 str_AnalogOutputHeader *s_Header)
{
 unsigned short w_Temp;

 w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
  pc_PCIChipInformation, 0x100 + w_Address + 10);
 s_Header->w_Nchannel = (w_Temp >> 4) & 0x03FF;

 w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
  pc_PCIChipInformation, 0x100 + w_Address + 16);
 s_Header->b_Resolution = (unsigned char) (w_Temp >> 8) & 0xFF;
 return 0;
}
