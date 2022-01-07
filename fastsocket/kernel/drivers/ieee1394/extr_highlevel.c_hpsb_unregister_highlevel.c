
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_highlevel {int hl_list; int irq_list; } ;


 int down_write (int *) ;
 int highlevel_for_each_host_unreg ;
 int hl_drivers_sem ;
 int hl_irqs_lock ;
 int list_del (int *) ;
 int nodemgr_for_each_host (struct hpsb_highlevel*,int ) ;
 int up_write (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void hpsb_unregister_highlevel(struct hpsb_highlevel *hl)
{
 unsigned long flags;

 write_lock_irqsave(&hl_irqs_lock, flags);
 list_del(&hl->irq_list);
 write_unlock_irqrestore(&hl_irqs_lock, flags);

 down_write(&hl_drivers_sem);
 list_del(&hl->hl_list);
 up_write(&hl_drivers_sem);

 nodemgr_for_each_host(hl, highlevel_for_each_host_unreg);
}
