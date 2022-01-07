
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht_irq_msg {int dummy; } ;
struct ht_irq_cfg {struct ht_irq_msg msg; } ;


 struct ht_irq_cfg* get_irq_data (unsigned int) ;

void fetch_ht_irq_msg(unsigned int irq, struct ht_irq_msg *msg)
{
 struct ht_irq_cfg *cfg = get_irq_data(irq);
 *msg = cfg->msg;
}
