
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct work_struct {int dummy; } ;
typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_5__ {scalar_t__ Ibuf_stuff; scalar_t__ Ibuf_strip; int Ibuf_spinlock; int throttled; int * pTTY; } ;


 int CHANN ;
 int ITRC_INPUT ;
 TYPE_1__* container_of (struct work_struct*,int ,int ) ;
 int i2ChanStr ;
 int i2Input (TYPE_1__*) ;
 int i2InputFlush (TYPE_1__*) ;
 int ip2trace (int ,int ,int,int ) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int tqueue_input ;

__attribute__((used)) static void do_input(struct work_struct *work)
{
 i2ChanStrPtr pCh = container_of(work, i2ChanStr, tqueue_input);
 unsigned long flags;

 ip2trace(CHANN, ITRC_INPUT, 21, 0 );


 if ( pCh->pTTY != ((void*)0) ) {
  read_lock_irqsave(&pCh->Ibuf_spinlock, flags);
  if (!pCh->throttled && (pCh->Ibuf_stuff != pCh->Ibuf_strip)) {
   read_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
   i2Input( pCh );
  } else
   read_unlock_irqrestore(&pCh->Ibuf_spinlock, flags);
 } else {
  ip2trace(CHANN, ITRC_INPUT, 22, 0 );

  i2InputFlush( pCh );
 }
}
