
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
typedef int i2CmdHeader ;
typedef TYPE_2__* i2ChanStrPtr ;
struct TYPE_10__ {unsigned short Cbuf_strip; unsigned short Cbuf_stuff; unsigned char* Cbuf; int Cbuf_spinlock; } ;
struct TYPE_9__ {int debugBypassCount; } ;


 unsigned short CBUF_SIZE ;
 int CMD_COUNT_OF (unsigned char*) ;
 int ITRC_ERROR ;
 int ITRC_NO_PORT ;
 int NEED_BYPASS ;
 int WriteDBGBuf (char*,unsigned char*,unsigned short) ;
 TYPE_2__* i2DeQueueNeeds (TYPE_1__*,int ) ;
 int i2QueueNeeds (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ i2Write2Fifo (TYPE_1__*,unsigned char*,unsigned short,int ) ;
 int ip2trace (int ,int ,int,int ) ;
 unsigned short roundup (unsigned short,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
i2StuffFifoBypass(i2eBordStrPtr pB)
{
 i2ChanStrPtr pCh;
 unsigned char *pRemove;
 unsigned short stripIndex;
 unsigned short packetSize;
 unsigned short paddedSize;
 unsigned short notClogged = 1;
 unsigned long flags;

 int bailout = 1000;



 while ( --bailout && notClogged &&
   (((void*)0) != (pCh = i2DeQueueNeeds(pB,NEED_BYPASS))))
 {
  write_lock_irqsave(&pCh->Cbuf_spinlock, flags);
  stripIndex = pCh->Cbuf_strip;



  while (stripIndex != pCh->Cbuf_stuff) {
   pRemove = &(pCh->Cbuf[stripIndex]);
   packetSize = CMD_COUNT_OF(pRemove) + sizeof(i2CmdHeader);
   paddedSize = roundup(packetSize, 2);

   if (paddedSize > 0) {
    if ( 0 == i2Write2Fifo(pB, pRemove, paddedSize,0)) {
     notClogged = 0;
     i2QueueNeeds(pB, pCh, NEED_BYPASS);
     break;
    }
   }



   pB->debugBypassCount++;

   pRemove += packetSize;
   stripIndex += packetSize;
   if (stripIndex >= CBUF_SIZE) {
    stripIndex = 0;
    pRemove = pCh->Cbuf;
   }
  }


  pCh->Cbuf_strip = stripIndex;
  write_unlock_irqrestore(&pCh->Cbuf_spinlock, flags);
 }






}
