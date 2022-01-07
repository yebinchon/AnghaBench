
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* i2ChanStrPtr ;
struct TYPE_6__ {int asof; } ;
struct TYPE_7__ {int Ibuf_stuff; int Ibuf_strip; int sinceLastFlow; int whenSendFlow; int Ibuf_spinlock; int pMyBord; TYPE_1__ infl; } ;


 int CHANN ;
 scalar_t__ IBUF_SIZE ;
 int ITRC_INPUT ;
 int NEED_FLOW ;
 int i2QueueNeeds (int ,TYPE_2__*,int ) ;
 int i2Validate (TYPE_2__*) ;
 int ip2trace (int ,int ,int,int,...) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
i2InputFlush(i2ChanStrPtr pCh)
{
 int count;
 unsigned long flags;


 if ( !i2Validate ( pCh ) )
  return -1;

 ip2trace (CHANN, ITRC_INPUT, 10, 0);

 write_lock_irqsave(&pCh->Ibuf_spinlock, flags);
 count = pCh->Ibuf_stuff - pCh->Ibuf_strip;


 if (count < 0) {
  count += IBUF_SIZE;
 }


 pCh->Ibuf_strip = pCh->Ibuf_stuff;






 pCh->infl.asof += count;

 if ( (pCh->sinceLastFlow += count) >= pCh->whenSendFlow )
 {
  pCh->sinceLastFlow -= pCh->whenSendFlow;
  write_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
  i2QueueNeeds(pCh->pMyBord, pCh, NEED_FLOW);
 } else {
  write_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
 }

 ip2trace (CHANN, ITRC_INPUT, 19, 1, count);

 return count;
}
