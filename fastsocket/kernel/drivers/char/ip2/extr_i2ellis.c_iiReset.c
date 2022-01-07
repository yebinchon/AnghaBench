
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_5__ {scalar_t__ i2eValid; scalar_t__ i2eFatal; int * i2eFatalTrap; scalar_t__ i2eFifoOutInts; scalar_t__ i2eFifoInInts; scalar_t__* i2eLeadoffWord; scalar_t__ i2eChannelCnt; int * i2eChannelPtr; scalar_t__ i2eOutMailWaiting; scalar_t__ i2eWaitingForEmptyFifo; int i2eUsingIrq; int i2eState; scalar_t__ i2eBase; } ;


 scalar_t__ FIFO_RESET ;
 int I2EE_BADMAGIC ;
 int I2EE_GOOD ;
 scalar_t__ I2E_MAGIC ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 int I2_IRQ_UNDEFINED ;
 int II_STATE_RESET ;
 int iiDelay (TYPE_1__*,int) ;
 scalar_t__ iiDelayed ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int
iiReset(i2eBordStrPtr pB)
{

 if (pB->i2eValid != I2E_MAGIC)
 {
  I2_COMPLETE(pB, I2EE_BADMAGIC);
 }

 outb(0, pB->i2eBase + FIFO_RESET);
 iiDelay(pB, 50);
 outb(0, pB->i2eBase + FIFO_RESET);
 pB->i2eState = II_STATE_RESET;

 iiDelayed = 0;





 pB->i2eUsingIrq = I2_IRQ_UNDEFINED;
 pB->i2eWaitingForEmptyFifo = 0;
 pB->i2eOutMailWaiting = 0;
 pB->i2eChannelPtr = ((void*)0);
 pB->i2eChannelCnt = 0;

 pB->i2eLeadoffWord[0] = 0;
 pB->i2eFifoInInts = 0;
 pB->i2eFifoOutInts = 0;
 pB->i2eFatalTrap = ((void*)0);
 pB->i2eFatal = 0;

 I2_COMPLETE(pB, I2EE_GOOD);
}
