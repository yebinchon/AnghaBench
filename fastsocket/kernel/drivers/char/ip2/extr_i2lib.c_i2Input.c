
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* i2ChanStrPtr ;
struct TYPE_14__ {int receive_room; TYPE_2__* ldisc; } ;
struct TYPE_12__ {int asof; } ;
struct TYPE_13__ {unsigned short Ibuf_strip; unsigned short Ibuf_stuff; int sinceLastFlow; int whenSendFlow; int Ibuf_spinlock; int pMyBord; TYPE_3__ infl; int * Ibuf; TYPE_5__* pTTY; } ;
struct TYPE_11__ {TYPE_1__* ops; } ;
struct TYPE_10__ {int (* receive_buf ) (TYPE_5__*,int *,int *,int) ;} ;


 int CHANN ;
 int IBUF_SIZE ;
 int ITRC_ENTER ;
 int ITRC_INPUT ;
 int ITRC_RETURN ;
 int NEED_FLOW ;
 int i2QueueNeeds (int ,TYPE_4__*,int ) ;
 int i2Validate (TYPE_4__*) ;
 int ip2trace (int ,int ,int ,int,...) ;
 int stub1 (TYPE_5__*,int *,int *,int) ;
 int stub2 (TYPE_5__*,int *,int *,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
i2Input(i2ChanStrPtr pCh)
{
 int amountToMove;
 unsigned short stripIndex;
 int count;
 unsigned long flags = 0;

 ip2trace (CHANN, ITRC_INPUT, ITRC_ENTER, 0);


 if ( !i2Validate( pCh ) ) {
  count = -1;
  goto i2Input_exit;
 }
 write_lock_irqsave(&pCh->Ibuf_spinlock, flags);


 stripIndex = pCh->Ibuf_strip;

 count = pCh->Ibuf_stuff - stripIndex;



 if ( count == 0 ) {
  write_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
  goto i2Input_exit;
 }

 if ( count < 0 ) {
  count += IBUF_SIZE;
 }

 amountToMove = pCh->pTTY->receive_room;
 if (count > amountToMove) {
  count = amountToMove;
 }

 amountToMove = IBUF_SIZE - stripIndex;

 if (amountToMove > count) {
  amountToMove = count;
 }

 pCh->pTTY->ldisc->ops->receive_buf( pCh->pTTY,
   &(pCh->Ibuf[stripIndex]), ((void*)0), amountToMove );

 if (count > amountToMove) {
  pCh->pTTY->ldisc->ops->receive_buf( pCh->pTTY,
   pCh->Ibuf, ((void*)0), count - amountToMove );
 }


 stripIndex += count;
 if (stripIndex >= IBUF_SIZE) {
  stripIndex -= IBUF_SIZE;
 }
 pCh->Ibuf_strip = stripIndex;




 pCh->infl.asof += count;

 if ((pCh->sinceLastFlow += count) >= pCh->whenSendFlow) {
  pCh->sinceLastFlow -= pCh->whenSendFlow;
  write_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
  i2QueueNeeds(pCh->pMyBord, pCh, NEED_FLOW);
 } else {
  write_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
 }

i2Input_exit:

 ip2trace (CHANN, ITRC_INPUT, ITRC_RETURN, 1, count);

 return count;
}
