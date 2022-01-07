
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {unsigned int irq_base; int edge_work; int mask_work; int imr; struct sih const* sih; } ;
struct sih {int module; unsigned int bits; int name; scalar_t__ set_cor; } ;


 int ARRAY_SIZE (struct sih*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned int NR_IRQS ;
 int WARN (int,char*,unsigned int,int ) ;
 int activate_irq (int) ;
 int handle_edge_irq ;
 int handle_twl4030_sih ;
 struct sih_agent* kzalloc (int,int ) ;
 int pr_info (char*,int ,int,unsigned int,int) ;
 int set_irq_chained_handler (int,int ) ;
 int set_irq_chip_and_handler (int,int *,int ) ;
 int set_irq_chip_data (int,struct sih_agent*) ;
 int set_irq_data (int,struct sih_agent*) ;
 struct sih* sih_modules ;
 int twl4030_irq_base ;
 int twl4030_irq_next ;
 int twl4030_sih_do_edge ;
 int twl4030_sih_do_mask ;
 int twl4030_sih_irq_chip ;

int twl4030_sih_setup(int module)
{
 int sih_mod;
 const struct sih *sih = ((void*)0);
 struct sih_agent *agent;
 int i, irq;
 int status = -EINVAL;
 unsigned irq_base = twl4030_irq_next;


 for (sih_mod = 0, sih = sih_modules;
   sih_mod < ARRAY_SIZE(sih_modules);
   sih_mod++, sih++) {
  if (sih->module == module && sih->set_cor) {
   if (!WARN((irq_base + sih->bits) > NR_IRQS,
     "irq %d for %s too big\n",
     irq_base + sih->bits,
     sih->name))
    status = 0;
   break;
  }
 }
 if (status < 0)
  return status;

 agent = kzalloc(sizeof *agent, GFP_KERNEL);
 if (!agent)
  return -ENOMEM;

 status = 0;

 agent->irq_base = irq_base;
 agent->sih = sih;
 agent->imr = ~0;
 INIT_WORK(&agent->mask_work, twl4030_sih_do_mask);
 INIT_WORK(&agent->edge_work, twl4030_sih_do_edge);

 for (i = 0; i < sih->bits; i++) {
  irq = irq_base + i;

  set_irq_chip_and_handler(irq, &twl4030_sih_irq_chip,
    handle_edge_irq);
  set_irq_chip_data(irq, agent);
  activate_irq(irq);
 }

 status = irq_base;
 twl4030_irq_next += i;


 irq = sih_mod + twl4030_irq_base;
 set_irq_data(irq, agent);
 set_irq_chained_handler(irq, handle_twl4030_sih);

 pr_info("twl4030: %s (irq %d) chaining IRQs %d..%d\n", sih->name,
   irq, irq_base, twl4030_irq_next - 1);

 return status;
}
