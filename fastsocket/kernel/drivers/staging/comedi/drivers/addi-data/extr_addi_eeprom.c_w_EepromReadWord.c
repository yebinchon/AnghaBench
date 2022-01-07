
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char NVCMD_BEGIN_READ ;
 unsigned char NVCMD_LOAD_HIGH ;
 unsigned char NVCMD_LOAD_LOW ;
 unsigned char inb (unsigned short) ;
 int outb (unsigned char,unsigned short) ;
 int strcmp (char*,char*) ;
 int v_EepromCs76Read (unsigned short,unsigned short,unsigned short*) ;
 int v_EepromWaitBusy (unsigned short) ;

unsigned short w_EepromReadWord(unsigned short w_PCIBoardEepromAddress, char *pc_PCIChipInformation,
 unsigned short w_EepromStartAddress)
{

 unsigned char b_Counter = 0;

 unsigned char b_ReadByte = 0;

 unsigned char b_ReadLowByte = 0;

 unsigned char b_ReadHighByte = 0;

 unsigned char b_SelectedAddressLow = 0;

 unsigned char b_SelectedAddressHigh = 0;

 unsigned short w_ReadWord = 0;







 if ((!strcmp(pc_PCIChipInformation, "S5920")) ||
  (!strcmp(pc_PCIChipInformation, "S5933")))
 {

  for (b_Counter = 0; b_Counter < 2; b_Counter++)
  {

   b_SelectedAddressLow = (w_EepromStartAddress + b_Counter) % 256;

   b_SelectedAddressHigh = (w_EepromStartAddress + b_Counter) / 256;







   outb(NVCMD_LOAD_LOW, w_PCIBoardEepromAddress + 0x3F);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   outb(b_SelectedAddressLow,
    w_PCIBoardEepromAddress + 0x3E);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   outb(NVCMD_LOAD_HIGH, w_PCIBoardEepromAddress + 0x3F);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   outb(b_SelectedAddressHigh,
    w_PCIBoardEepromAddress + 0x3E);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   outb(NVCMD_BEGIN_READ, w_PCIBoardEepromAddress + 0x3F);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   b_ReadByte = inb(w_PCIBoardEepromAddress + 0x3E);







   v_EepromWaitBusy(w_PCIBoardEepromAddress);







   if (b_Counter == 0)
   {

    b_ReadLowByte = b_ReadByte;

   }

   else
   {

    b_ReadHighByte = b_ReadByte;

   }

  }

  w_ReadWord = (b_ReadLowByte | (((unsigned short) b_ReadHighByte) * 256));

 }

 if (!strcmp(pc_PCIChipInformation, "93C76"))
 {







  v_EepromCs76Read(w_PCIBoardEepromAddress, w_EepromStartAddress,
   &w_ReadWord);

 }

 return w_ReadWord;

}
