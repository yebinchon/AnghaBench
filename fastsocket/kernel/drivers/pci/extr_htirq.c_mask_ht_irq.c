
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht_irq_msg {int address_lo; } ;
struct ht_irq_cfg {struct ht_irq_msg msg; } ;


 struct ht_irq_cfg* get_irq_data (unsigned int) ;
 int write_ht_irq_msg (unsigned int,struct ht_irq_msg*) ;

void mask_ht_irq(unsigned int irq)
{
 struct ht_irq_cfg *cfg;
 struct ht_irq_msg msg;

 cfg = get_irq_data(irq);

 msg = cfg->msg;
 msg.address_lo |= 1;
 write_ht_irq_msg(irq, &msg);
}
