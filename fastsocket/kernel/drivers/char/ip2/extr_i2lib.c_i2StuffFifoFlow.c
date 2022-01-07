
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
typedef TYPE_2__* i2ChanStrPtr ;
typedef int flowIn ;
struct TYPE_8__ {int infl; } ;
struct TYPE_7__ {int debugFlowCount; int i2eFifoRemains; } ;


 int ITRC_ENTER ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 int ITRC_SFLOW ;
 int NEED_FLOW ;
 int WriteDBGBuf (char*,unsigned char*,unsigned short) ;
 TYPE_2__* i2DeQueueNeeds (TYPE_1__*,int ) ;
 scalar_t__ i2Write2Fifo (TYPE_1__*,unsigned char*,unsigned short,int ) ;
 int ip2trace (int ,int ,int ,int,...) ;
 unsigned short roundup (int,int) ;

__attribute__((used)) static inline void
i2StuffFifoFlow(i2eBordStrPtr pB)
{
 i2ChanStrPtr pCh;
 unsigned short paddedSize = roundup(sizeof(flowIn), 2);

 ip2trace (ITRC_NO_PORT, ITRC_SFLOW, ITRC_ENTER, 2,
  pB->i2eFifoRemains, paddedSize );



 while ( (((void*)0) != (pCh = i2DeQueueNeeds(pB,NEED_FLOW)))) {
  pB->debugFlowCount++;


  if ( 0 == i2Write2Fifo(pB,(unsigned char *)&(pCh->infl),paddedSize,0)) {
   break;
  }




 }

 ip2trace (ITRC_NO_PORT, ITRC_SFLOW, ITRC_RETURN, 0 );
}
