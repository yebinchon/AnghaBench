
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ IO_Address; int PCI_Address; int Function; int Device; int Bus; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_Error (char*,TYPE_1__*,...) ;

__attribute__((used)) static bool DAC960_Failure(DAC960_Controller_T *Controller,
         unsigned char *ErrorMessage)
{
  DAC960_Error("While configuring DAC960 PCI RAID Controller at\n",
        Controller);
  if (Controller->IO_Address == 0)
    DAC960_Error("PCI Bus %d Device %d Function %d I/O Address N/A "
   "PCI Address 0x%X\n", Controller,
   Controller->Bus, Controller->Device,
   Controller->Function, Controller->PCI_Address);
  else DAC960_Error("PCI Bus %d Device %d Function %d I/O Address "
      "0x%X PCI Address 0x%X\n", Controller,
      Controller->Bus, Controller->Device,
      Controller->Function, Controller->IO_Address,
      Controller->PCI_Address);
  DAC960_Error("%s FAILED - DETACHING\n", Controller, ErrorMessage);
  return 0;
}
