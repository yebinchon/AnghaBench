
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_3__* i2eBordStrPtr ;
typedef int i2DataHeader ;
typedef int i2CmdHeader ;
typedef TYPE_4__* i2ChanStrPtr ;
struct TYPE_12__ {unsigned short room; unsigned short asof; } ;
struct TYPE_11__ {unsigned short tx; } ;
struct TYPE_14__ {unsigned short Obuf_strip; unsigned short Obuf_stuff; unsigned char* Obuf; unsigned short Obuf_char_count; scalar_t__ pTTY; int Obuf_spinlock; TYPE_2__ outfl; TYPE_1__ icount; } ;
struct TYPE_13__ {unsigned short i2Dbuf_strip; int debugInlineCount; int i2eFifoRemains; int i2Dbuf_stuff; } ;


 int CHANN ;
 unsigned short CMD_COUNT_OF (unsigned char*) ;
 unsigned short CREDIT_USAGE (unsigned short) ;
 unsigned short DATA_COUNT_OF (unsigned char*) ;
 int ITRC_ENTER ;
 int ITRC_ERROR ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 int ITRC_SICMD ;
 int NEED_CREDIT ;
 int NEED_INLINE ;
 unsigned short OBUF_SIZE ;
 scalar_t__ PTYPE_DATA ;
 scalar_t__ PTYPE_OF (unsigned char*) ;
 int WriteDBGBuf (char*,unsigned char*,unsigned short) ;
 TYPE_4__* i2DeQueueNeeds (TYPE_3__*,int ) ;
 int i2QueueNeeds (TYPE_3__*,TYPE_4__*,int ) ;
 scalar_t__ i2Write2Fifo (TYPE_3__*,unsigned char*,unsigned short,int) ;
 int ip2_owake (scalar_t__) ;
 int ip2trace (int ,int ,int,int,...) ;
 unsigned short roundup (unsigned short,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
i2StuffFifoInline(i2eBordStrPtr pB)
{
 i2ChanStrPtr pCh;
 unsigned char *pRemove;
 unsigned short stripIndex;
 unsigned short packetSize;
 unsigned short paddedSize;
 unsigned short notClogged = 1;
 unsigned short flowsize;
 unsigned long flags;

 int bailout = 1000;
 int bailout2;

 ip2trace (ITRC_NO_PORT, ITRC_SICMD, ITRC_ENTER, 3, pB->i2eFifoRemains,
   pB->i2Dbuf_strip, pB->i2Dbuf_stuff );



 while ( --bailout && notClogged &&
   (((void*)0) != (pCh = i2DeQueueNeeds(pB,NEED_INLINE))) )
 {
  write_lock_irqsave(&pCh->Obuf_spinlock, flags);
  stripIndex = pCh->Obuf_strip;

  ip2trace (CHANN, ITRC_SICMD, 3, 2, stripIndex, pCh->Obuf_stuff );


  bailout2 = 1000;
  while ( --bailout2 && stripIndex != pCh->Obuf_stuff) {
   pRemove = &(pCh->Obuf[stripIndex]);




   if (PTYPE_OF(pRemove) == PTYPE_DATA) {
    flowsize = DATA_COUNT_OF(pRemove);
    packetSize = flowsize + sizeof(i2DataHeader);
   } else {
    flowsize = CMD_COUNT_OF(pRemove);
    packetSize = flowsize + sizeof(i2CmdHeader);
   }
   flowsize = CREDIT_USAGE(flowsize);
   paddedSize = roundup(packetSize, 2);

   ip2trace (CHANN, ITRC_SICMD, 4, 2, pB->i2eFifoRemains, paddedSize );






    ip2trace (CHANN, ITRC_SICMD, 5, 2, pCh->outfl.room, flowsize );

   if (pCh->outfl.room <= flowsize) {

    i2QueueNeeds(pB, pCh, NEED_CREDIT);
    notClogged = 0;
    break;
   }
   if ( (paddedSize > 0)
    && ( 0 == i2Write2Fifo(pB, pRemove, paddedSize, 128))) {

    notClogged = 0;
    i2QueueNeeds(pB, pCh, NEED_INLINE);
    break;
   }



   pB->debugInlineCount++;

   pCh->icount.tx += flowsize;

   pCh->outfl.room -= flowsize;
   pCh->outfl.asof += flowsize;
   if (PTYPE_OF(pRemove) == PTYPE_DATA) {
    pCh->Obuf_char_count -= DATA_COUNT_OF(pRemove);
   }
   pRemove += packetSize;
   stripIndex += packetSize;

   ip2trace (CHANN, ITRC_SICMD, 6, 2, stripIndex, pCh->Obuf_strip);

   if (stripIndex >= OBUF_SIZE) {
    stripIndex = 0;
    pRemove = pCh->Obuf;

    ip2trace (CHANN, ITRC_SICMD, 7, 1, stripIndex );

   }
  }
  if ( !bailout2 ) {
   ip2trace (CHANN, ITRC_ERROR, 3, 0 );
  }


  pCh->Obuf_strip = stripIndex;
  write_unlock_irqrestore(&pCh->Obuf_spinlock, flags);
  if ( notClogged )
  {

   ip2trace (CHANN, ITRC_SICMD, 8, 0 );

   if ( pCh->pTTY ) {
    ip2_owake(pCh->pTTY);
   }
  }
 }

 if ( !bailout ) {
  ip2trace (ITRC_NO_PORT, ITRC_ERROR, 4, 0 );
 }

 ip2trace (ITRC_NO_PORT, ITRC_SICMD, ITRC_RETURN, 1,pB->i2Dbuf_strip);
}
