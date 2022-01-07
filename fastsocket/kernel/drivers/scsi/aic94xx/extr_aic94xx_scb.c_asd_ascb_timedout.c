
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct asd_seq_data {int pend_q_lock; int pending; } ;
struct asd_ascb {int list; TYPE_3__* scb; TYPE_1__* ha; } ;
struct TYPE_5__ {int opcode; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {struct asd_seq_data seq; } ;


 int ASD_DPRINTK (char*,int ) ;
 int asd_ascb_free (struct asd_ascb*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void asd_ascb_timedout(unsigned long data)
{
 struct asd_ascb *ascb = (void *) data;
 struct asd_seq_data *seq = &ascb->ha->seq;
 unsigned long flags;

 ASD_DPRINTK("scb:0x%x timed out\n", ascb->scb->header.opcode);

 spin_lock_irqsave(&seq->pend_q_lock, flags);
 seq->pending--;
 list_del_init(&ascb->list);
 spin_unlock_irqrestore(&seq->pend_q_lock, flags);

 asd_ascb_free(ascb);
}
