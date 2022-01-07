
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int InitialStatusLength; unsigned int CurrentStatusLength; unsigned int CombinedStatusBufferLength; unsigned char* CombinedStatusBuffer; unsigned char* CurrentStatusBuffer; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 unsigned int DAC960_InitialStatusBufferSize ;
 int DAC960_Warning (char*,TYPE_1__*) ;
 int GFP_ATOMIC ;
 int kfree (unsigned char*) ;
 void* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static bool DAC960_CheckStatusBuffer(DAC960_Controller_T *Controller,
     unsigned int ByteCount)
{
  unsigned char *NewStatusBuffer;
  if (Controller->InitialStatusLength + 1 +
      Controller->CurrentStatusLength + ByteCount + 1 <=
      Controller->CombinedStatusBufferLength)
    return 1;
  if (Controller->CombinedStatusBufferLength == 0)
    {
      unsigned int NewStatusBufferLength = DAC960_InitialStatusBufferSize;
      while (NewStatusBufferLength < ByteCount)
 NewStatusBufferLength *= 2;
      Controller->CombinedStatusBuffer = kmalloc(NewStatusBufferLength,
        GFP_ATOMIC);
      if (Controller->CombinedStatusBuffer == ((void*)0)) return 0;
      Controller->CombinedStatusBufferLength = NewStatusBufferLength;
      return 1;
    }
  NewStatusBuffer = kmalloc(2 * Controller->CombinedStatusBufferLength,
        GFP_ATOMIC);
  if (NewStatusBuffer == ((void*)0))
    {
      DAC960_Warning("Unable to expand Combined Status Buffer - Truncating\n",
       Controller);
      return 0;
    }
  memcpy(NewStatusBuffer, Controller->CombinedStatusBuffer,
  Controller->CombinedStatusBufferLength);
  kfree(Controller->CombinedStatusBuffer);
  Controller->CombinedStatusBuffer = NewStatusBuffer;
  Controller->CombinedStatusBufferLength *= 2;
  Controller->CurrentStatusBuffer =
    &NewStatusBuffer[Controller->InitialStatusLength + 1];
  return 1;
}
