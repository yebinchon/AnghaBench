
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct str_MainHeader {unsigned char b_Nfunctions; TYPE_1__* s_Functions; void* w_HeaderSize; } ;
struct str_DigitalOutputHeader {int w_Nchannel; } ;
struct str_DigitalInputHeader {int w_Nchannel; } ;
struct str_AnalogInputHeader {int w_Nchannel; int b_Resolution; scalar_t__ w_MinDelayTiming; scalar_t__ w_MinConvertTiming; int b_HasDma; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int b_Resolution; int w_Nchannel; } ;
typedef TYPE_2__ str_AnalogOutputHeader ;
struct TYPE_7__ {unsigned int i_DoMaxdata; int i_NbrAiChannel; unsigned int ui_MinAcquisitiontimeNs; unsigned int ui_MinDelaytimeNs; unsigned int i_AiMaxdata; unsigned int i_AoMaxdata; int i_Timer; int i_NbrAoChannel; int i_Dma; int pc_DriverName; int i_NbrDoChannel; int i_NbrDiChannel; } ;
struct TYPE_5__ {unsigned char b_Type; void* w_Address; } ;
 int i_EepromReadAnlogInputHeader (unsigned short,char*,void*,struct str_AnalogInputHeader*) ;
 int i_EepromReadAnlogOutputHeader (unsigned short,char*,void*,TYPE_2__*) ;
 int i_EepromReadDigitalInputHeader (unsigned short,char*,void*,struct str_DigitalInputHeader*) ;
 int i_EepromReadDigitalOutputHeader (unsigned short,char*,void*,struct str_DigitalOutputHeader*) ;
 int strcmp (int ,char*) ;
 TYPE_3__* this_board ;
 void* w_EepromReadWord (unsigned short,char*,int) ;

int i_EepromReadMainHeader(unsigned short w_PCIBoardEepromAddress,
 char *pc_PCIChipInformation, struct comedi_device *dev)
{
 unsigned short w_Temp, i, w_Count = 0;
 unsigned int ui_Temp;
 struct str_MainHeader s_MainHeader;
 struct str_DigitalInputHeader s_DigitalInputHeader;
 struct str_DigitalOutputHeader s_DigitalOutputHeader;

 str_AnalogOutputHeader s_AnalogOutputHeader;
 struct str_AnalogInputHeader s_AnalogInputHeader;


 s_MainHeader.w_HeaderSize =
  w_EepromReadWord(w_PCIBoardEepromAddress, pc_PCIChipInformation,
  0x100 + 8);


 w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
  pc_PCIChipInformation, 0x100 + 10);
 s_MainHeader.b_Nfunctions = (unsigned char) w_Temp & 0x00FF;


 for (i = 0; i < s_MainHeader.b_Nfunctions; i++) {

  w_Temp = w_EepromReadWord(w_PCIBoardEepromAddress,
   pc_PCIChipInformation, 0x100 + 12 + w_Count);
  s_MainHeader.s_Functions[i].b_Type = (unsigned char) w_Temp & 0x3F;
  w_Count = w_Count + 2;

  s_MainHeader.s_Functions[i].w_Address =
   w_EepromReadWord(w_PCIBoardEepromAddress,
   pc_PCIChipInformation, 0x100 + 12 + w_Count);
  w_Count = w_Count + 2;
 }


 for (i = 0; i < s_MainHeader.b_Nfunctions; i++) {

  switch (s_MainHeader.s_Functions[i].b_Type) {
  case 132:
   i_EepromReadDigitalInputHeader(w_PCIBoardEepromAddress,
    pc_PCIChipInformation,
    s_MainHeader.s_Functions[i].w_Address,
    &s_DigitalInputHeader);
   this_board->i_NbrDiChannel =
    s_DigitalInputHeader.w_Nchannel;
   break;

  case 131:
   i_EepromReadDigitalOutputHeader(w_PCIBoardEepromAddress,
    pc_PCIChipInformation,
    s_MainHeader.s_Functions[i].w_Address,
    &s_DigitalOutputHeader);
   this_board->i_NbrDoChannel =
    s_DigitalOutputHeader.w_Nchannel;
   ui_Temp = 0xffffffff;
   this_board->i_DoMaxdata =
    ui_Temp >> (32 - this_board->i_NbrDoChannel);
   break;

  case 134:
   i_EepromReadAnlogInputHeader(w_PCIBoardEepromAddress,
    pc_PCIChipInformation,
    s_MainHeader.s_Functions[i].w_Address,
    &s_AnalogInputHeader);
   if (!(strcmp(this_board->pc_DriverName, "apci3200")))
    this_board->i_NbrAiChannel =
     s_AnalogInputHeader.w_Nchannel * 4;
   else
    this_board->i_NbrAiChannel =
     s_AnalogInputHeader.w_Nchannel;
   this_board->i_Dma = s_AnalogInputHeader.b_HasDma;
   this_board->ui_MinAcquisitiontimeNs =
    (unsigned int) s_AnalogInputHeader.w_MinConvertTiming *
    1000;
   this_board->ui_MinDelaytimeNs =
    (unsigned int) s_AnalogInputHeader.w_MinDelayTiming *
    1000;
   ui_Temp = 0xffff;
   this_board->i_AiMaxdata =
    ui_Temp >> (16 -
    s_AnalogInputHeader.b_Resolution);
   break;

  case 133:
   i_EepromReadAnlogOutputHeader(w_PCIBoardEepromAddress,
    pc_PCIChipInformation,
    s_MainHeader.s_Functions[i].w_Address,
    &s_AnalogOutputHeader);
   this_board->i_NbrAoChannel =
    s_AnalogOutputHeader.w_Nchannel;
   ui_Temp = 0xffff;
   this_board->i_AoMaxdata =
    ui_Temp >> (16 -
    s_AnalogOutputHeader.b_Resolution);
   break;

  case 130:
   this_board->i_Timer = 1;
   break;

  case 128:
   this_board->i_Timer = 1;
   break;

  case 129:
   this_board->i_Timer = 1;
  }
 }

 return 0;
}
