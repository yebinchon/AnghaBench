
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
typedef scalar_t__ delayFunc_t ;
struct TYPE_4__ {int i2eBase; int i2eState; int i2eValid; scalar_t__ i2eDelay; scalar_t__ i2eXMask; scalar_t__ i2eXMail; scalar_t__ i2ePointer; scalar_t__ i2eStatus; scalar_t__ i2eData; } ;


 scalar_t__ FIFO_DATA ;
 scalar_t__ FIFO_MAIL ;
 scalar_t__ FIFO_MASK ;
 scalar_t__ FIFO_NOP ;
 scalar_t__ FIFO_PTR ;
 scalar_t__ FIFO_STATUS ;
 int I2EE_BADADDR ;
 int I2EE_GOOD ;
 int I2E_INCOMPLETE ;
 int I2E_MAGIC ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 int II_STATE_COLD ;
 scalar_t__ ii2Nop ;
 scalar_t__ ii2Safe ;

__attribute__((used)) static int
iiSetAddress( i2eBordStrPtr pB, int address, delayFunc_t delay )
{

 pB->i2eValid = I2E_INCOMPLETE;




 if ((unsigned int)address <= 0x100
  || (unsigned int)address >= 0xfff8
  || (address & 0x7)
  )
 {
  I2_COMPLETE(pB, I2EE_BADADDR);
 }


 pB->i2eBase = address;
 pB->i2eData = address + FIFO_DATA;
 pB->i2eStatus = address + FIFO_STATUS;
 pB->i2ePointer = address + FIFO_PTR;
 pB->i2eXMail = address + FIFO_MAIL;
 pB->i2eXMask = address + FIFO_MASK;


 ii2Safe = address + FIFO_NOP;


 pB->i2eDelay = ((delay != (delayFunc_t)((void*)0)) ? delay : (delayFunc_t)ii2Nop);

 pB->i2eValid = I2E_MAGIC;
 pB->i2eState = II_STATE_COLD;

 I2_COMPLETE(pB, I2EE_GOOD);
}
