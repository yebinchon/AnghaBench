
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_highlevel {scalar_t__ add_host; int irq_list; int hl_list; int addr_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int down_write (int *) ;
 int highlevel_for_each_host_reg ;
 int hl_drivers ;
 int hl_drivers_sem ;
 int hl_irqs ;
 int hl_irqs_lock ;
 int hpsb_init_highlevel (struct hpsb_highlevel*) ;
 int list_add_tail (int *,int *) ;
 int nodemgr_for_each_host (struct hpsb_highlevel*,int ) ;
 int up_write (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void hpsb_register_highlevel(struct hpsb_highlevel *hl)
{
 unsigned long flags;

 hpsb_init_highlevel(hl);
 INIT_LIST_HEAD(&hl->addr_list);

 down_write(&hl_drivers_sem);
 list_add_tail(&hl->hl_list, &hl_drivers);
 up_write(&hl_drivers_sem);

 write_lock_irqsave(&hl_irqs_lock, flags);
 list_add_tail(&hl->irq_list, &hl_irqs);
 write_unlock_irqrestore(&hl_irqs_lock, flags);

 if (hl->add_host)
  nodemgr_for_each_host(hl, highlevel_for_each_host_reg);
 return;
}
