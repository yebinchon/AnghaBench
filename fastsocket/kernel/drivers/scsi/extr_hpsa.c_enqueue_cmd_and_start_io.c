
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int lock; int Qdepth; int reqQ; } ;
struct CommandList {int dummy; } ;


 int addQ (int *,struct CommandList*) ;
 int dial_down_lockup_detection_during_fw_flash (struct ctlr_info*,struct CommandList*) ;
 int set_performant_mode (struct ctlr_info*,struct CommandList*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_io (struct ctlr_info*) ;

__attribute__((used)) static void enqueue_cmd_and_start_io(struct ctlr_info *h,
 struct CommandList *c)
{
 unsigned long flags;

 set_performant_mode(h, c);
 dial_down_lockup_detection_during_fw_flash(h, c);
 spin_lock_irqsave(&h->lock, flags);
 addQ(&h->reqQ, c);
 h->Qdepth++;
 spin_unlock_irqrestore(&h->lock, flags);
 start_io(h);
}
