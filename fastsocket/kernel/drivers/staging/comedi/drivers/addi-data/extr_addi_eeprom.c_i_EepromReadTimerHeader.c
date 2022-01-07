
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ w_Temp ;
struct str_TimerMainHeader {unsigned short w_Ntimer; TYPE_1__* s_TimerDetails; } ;
struct TYPE_2__ {unsigned char b_Resolution; unsigned char b_Mode; unsigned short w_MinTiming; unsigned char b_TimeBase; void* w_HeaderSize; } ;


 void* w_EepromReadWord (unsigned short,char*,int) ;

int i_EepromReadTimerHeader(unsigned short w_PCIBoardEepromAddress,
 char *pc_PCIChipInformation, unsigned short w_Address,
 struct str_TimerMainHeader *s_Header)
{

 unsigned short i, w_Size = 0, w_Temp;


 s_Header->w_Ntimer =
  w_EepromReadWord(w_PCIBoardEepromAddress, pc_PCIChipInformation,
  0x100 + w_Address + 6);


 for (i = 0; i < s_Header->w_Ntimer; i++) {
  s_Header->s_TimerDetails[i].w_HeaderSize =
   w_EepromReadWord(w_PCIBoardEepromAddress,
   pc_PCIChipInformation,
   0x100 + w_Address + 8 + w_Size + 0);
  w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
   pc_PCIChipInformation,
   0x100 + w_Address + 8 + w_Size + 2);


  s_Header->s_TimerDetails[i].b_Resolution =
   (unsigned char) (w_Temp >> 10) & 0x3F;


  s_Header->s_TimerDetails[i].b_Mode =
   (unsigned char) (w_Temp >> 4) & 0x3F;

  w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
   pc_PCIChipInformation,
   0x100 + w_Address + 8 + w_Size + 4);


  s_Header->s_TimerDetails[i].w_MinTiming = (w_Temp >> 6) & 0x3FF;


  s_Header->s_TimerDetails[i].b_TimeBase = (unsigned char) (w_Temp) & 0x3F;
  w_Size += s_Header->s_TimerDetails[i].w_HeaderSize;
 }

 return 0;
}
