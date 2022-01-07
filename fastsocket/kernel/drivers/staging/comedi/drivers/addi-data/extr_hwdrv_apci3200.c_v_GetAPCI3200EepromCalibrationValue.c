
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct str_BoardInfos {TYPE_1__* s_Module; } ;
struct TYPE_2__ {unsigned short* w_GainValue; unsigned short* ul_GainFactor; unsigned short* ul_CurrentSource; unsigned short ul_CurrentSourceCJC; } ;


 int i_AddiHeaderRW_ReadEeprom (int,unsigned int,unsigned short,unsigned short*) ;
 int printk (char*,unsigned short,...) ;

void v_GetAPCI3200EepromCalibrationValue(unsigned int dw_PCIBoardEepromAddress,
 struct str_BoardInfos *BoardInformations)
{
 unsigned short w_AnalogInputMainHeaderAddress;
 unsigned short w_AnalogInputComponentAddress;
 unsigned short w_NumberOfModuls = 0;
 unsigned short w_CurrentSources[2];
 unsigned short w_ModulCounter = 0;
 unsigned short w_FirstHeaderSize = 0;
 unsigned short w_NumberOfInputs = 0;
 unsigned short w_CJCFlag = 0;
 unsigned short w_NumberOfGainValue = 0;
 unsigned short w_SingleHeaderAddress = 0;
 unsigned short w_SingleHeaderSize = 0;
 unsigned short w_Input = 0;
 unsigned short w_GainFactorAddress = 0;
 unsigned short w_GainFactorValue[2];
 unsigned short w_GainIndex = 0;
 unsigned short w_GainValue = 0;




 i_AddiHeaderRW_ReadEeprom(1,
  dw_PCIBoardEepromAddress, 0x116,
  &w_AnalogInputMainHeaderAddress);




 w_AnalogInputMainHeaderAddress = w_AnalogInputMainHeaderAddress + 0x100;




 i_AddiHeaderRW_ReadEeprom(1,
  dw_PCIBoardEepromAddress, w_AnalogInputMainHeaderAddress + 0x02,
  &w_NumberOfModuls);

 for (w_ModulCounter = 0; w_ModulCounter < w_NumberOfModuls;
  w_ModulCounter++) {



  w_AnalogInputComponentAddress =
   w_AnalogInputMainHeaderAddress +
   (w_FirstHeaderSize * w_ModulCounter) + 0x04;




  i_AddiHeaderRW_ReadEeprom(1,
   dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress,
   &w_FirstHeaderSize);

  w_FirstHeaderSize = w_FirstHeaderSize >> 4;




  i_AddiHeaderRW_ReadEeprom(1,
   dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress + 0x06,
   &w_NumberOfInputs);

  w_NumberOfInputs = w_NumberOfInputs >> 4;




  i_AddiHeaderRW_ReadEeprom(1,
   dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress + 0x08,
   &w_CJCFlag);

  w_CJCFlag = (w_CJCFlag >> 3) & 0x1;




  i_AddiHeaderRW_ReadEeprom(1,
   dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress + 0x44,
   &w_NumberOfGainValue);

  w_NumberOfGainValue = w_NumberOfGainValue & 0xFF;




  w_SingleHeaderAddress =
   w_AnalogInputComponentAddress + 0x46 +
   (((w_NumberOfGainValue / 16) + 1) * 2) +
   (6 * w_NumberOfGainValue) +
   (4 * (((w_NumberOfGainValue / 16) + 1) * 2));




  i_AddiHeaderRW_ReadEeprom(1,
   dw_PCIBoardEepromAddress, w_SingleHeaderAddress,
   &w_SingleHeaderSize);

  w_SingleHeaderSize = w_SingleHeaderSize >> 4;




  w_GainFactorAddress = w_AnalogInputComponentAddress;

  for (w_GainIndex = 0; w_GainIndex < w_NumberOfGainValue;
   w_GainIndex++) {



   i_AddiHeaderRW_ReadEeprom(1,
    dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress + 70 + (2 * (1 + (w_NumberOfGainValue / 16))) + (0x02 * w_GainIndex),
    &w_GainValue);

   BoardInformations->s_Module[w_ModulCounter].
    w_GainValue[w_GainIndex] = w_GainValue;
   i_AddiHeaderRW_ReadEeprom(2,
    dw_PCIBoardEepromAddress, w_AnalogInputComponentAddress + 70 + ((2 * w_NumberOfGainValue) + (2 * (1 + (w_NumberOfGainValue / 16)))) + (0x04 * w_GainIndex),
    w_GainFactorValue);

   BoardInformations->s_Module[w_ModulCounter].
    ul_GainFactor[w_GainIndex] =
    (w_GainFactorValue[1] << 16) +
    w_GainFactorValue[0];






  }




  for (w_Input = 0; w_Input < w_NumberOfInputs; w_Input++) {



   i_AddiHeaderRW_ReadEeprom(2,
    dw_PCIBoardEepromAddress,
    (w_Input * w_SingleHeaderSize) +
    w_SingleHeaderAddress + 0x0C, w_CurrentSources);




   BoardInformations->s_Module[w_ModulCounter].
    ul_CurrentSource[w_Input] =
    (w_CurrentSources[0] +
    ((w_CurrentSources[1] & 0xFFF) << 16));






  }




  i_AddiHeaderRW_ReadEeprom(2,
   dw_PCIBoardEepromAddress,
   (w_Input * w_SingleHeaderSize) + w_SingleHeaderAddress +
   0x0C, w_CurrentSources);




  BoardInformations->s_Module[w_ModulCounter].
   ul_CurrentSourceCJC =
   (w_CurrentSources[0] +
   ((w_CurrentSources[1] & 0xFFF) << 16));






 }
}
