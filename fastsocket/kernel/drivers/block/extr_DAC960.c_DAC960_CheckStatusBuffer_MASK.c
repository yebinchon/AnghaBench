#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int InitialStatusLength; unsigned int CurrentStatusLength; unsigned int CombinedStatusBufferLength; unsigned char* CombinedStatusBuffer; unsigned char* CurrentStatusBuffer; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 unsigned int DAC960_InitialStatusBufferSize ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static bool FUNC4(DAC960_Controller_T *Controller,
					unsigned int ByteCount)
{
  unsigned char *NewStatusBuffer;
  if (Controller->InitialStatusLength + 1 +
      Controller->CurrentStatusLength + ByteCount + 1 <=
      Controller->CombinedStatusBufferLength)
    return true;
  if (Controller->CombinedStatusBufferLength == 0)
    {
      unsigned int NewStatusBufferLength = DAC960_InitialStatusBufferSize;
      while (NewStatusBufferLength < ByteCount)
	NewStatusBufferLength *= 2;
      Controller->CombinedStatusBuffer = FUNC2(NewStatusBufferLength,
						  GFP_ATOMIC);
      if (Controller->CombinedStatusBuffer == NULL) return false;
      Controller->CombinedStatusBufferLength = NewStatusBufferLength;
      return true;
    }
  NewStatusBuffer = FUNC2(2 * Controller->CombinedStatusBufferLength,
			     GFP_ATOMIC);
  if (NewStatusBuffer == NULL)
    {
      FUNC0("Unable to expand Combined Status Buffer - Truncating\n",
		     Controller);
      return false;
    }
  FUNC3(NewStatusBuffer, Controller->CombinedStatusBuffer,
	 Controller->CombinedStatusBufferLength);
  FUNC1(Controller->CombinedStatusBuffer);
  Controller->CombinedStatusBuffer = NewStatusBuffer;
  Controller->CombinedStatusBufferLength *= 2;
  Controller->CurrentStatusBuffer =
    &NewStatusBuffer[Controller->InitialStatusLength + 1];
  return true;
}