
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_7__ {int i2eWaitingForEmptyFifo; } ;


 int i2StuffFifoBypass (TYPE_1__*) ;
 int i2StuffFifoFlow (TYPE_1__*) ;
 int i2StuffFifoInline (TYPE_1__*) ;
 int iiSendPendingMail (TYPE_1__*) ;

__attribute__((used)) static void
serviceOutgoingFifo(i2eBordStrPtr pB)
{



 if ( ! pB->i2eWaitingForEmptyFifo )
 {
  i2StuffFifoFlow(pB);
  i2StuffFifoBypass(pB);
  i2StuffFifoInline(pB);

  iiSendPendingMail(pB);
 }
}
