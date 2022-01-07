
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct done_list_struct {int toggle; int index; } ;
struct asd_seq_data {size_t dl_next; int dl_toggle; int pend_q_lock; int pending; int tc_index_lock; struct done_list_struct* dl; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
struct asd_ascb {int (* tasklet_complete ) (struct asd_ascb*,struct done_list_struct*) ;int list; int timer; int uldd_timer; TYPE_2__* scb; } ;
struct TYPE_3__ {scalar_t__ opcode; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int ASD_DL_SIZE ;
 int ASD_DPRINTK (char*) ;
 int DL_TOGGLE_MASK ;
 scalar_t__ EMPTY_SCB ;
 struct asd_ascb* asd_tc_index_find (struct asd_seq_data*,int) ;
 int del_timer (int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct asd_ascb*,struct done_list_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void asd_dl_tasklet_handler(unsigned long data)
{
 struct asd_ha_struct *asd_ha = (struct asd_ha_struct *) data;
 struct asd_seq_data *seq = &asd_ha->seq;
 unsigned long flags;

 while (1) {
  struct done_list_struct *dl = &seq->dl[seq->dl_next];
  struct asd_ascb *ascb;

  if ((dl->toggle & DL_TOGGLE_MASK) != seq->dl_toggle)
   break;


  spin_lock_irqsave(&seq->tc_index_lock, flags);
  ascb = asd_tc_index_find(seq, (int)le16_to_cpu(dl->index));
  spin_unlock_irqrestore(&seq->tc_index_lock, flags);
  if (unlikely(!ascb)) {
   ASD_DPRINTK("BUG:sequencer:dl:no ascb?!\n");
   goto next_1;
  } else if (ascb->scb->header.opcode == EMPTY_SCB) {
   goto out;
  } else if (!ascb->uldd_timer && !del_timer(&ascb->timer)) {
   goto next_1;
  }
  spin_lock_irqsave(&seq->pend_q_lock, flags);
  list_del_init(&ascb->list);
  seq->pending--;
  spin_unlock_irqrestore(&seq->pend_q_lock, flags);
 out:
  ascb->tasklet_complete(ascb, dl);

 next_1:
  seq->dl_next = (seq->dl_next + 1) & (ASD_DL_SIZE-1);
  if (!seq->dl_next)
   seq->dl_toggle ^= DL_TOGGLE_MASK;
 }
}
