
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct irq_host_ops {int (* map ) (struct irq_host*,unsigned int,unsigned int) ;int * match; } ;
struct TYPE_5__ {unsigned int size; unsigned int* revmap; } ;
struct TYPE_6__ {TYPE_1__ linear; } ;
struct irq_host {unsigned int revmap_type; TYPE_2__ revmap_data; int inval_irq; int link; struct irq_host_ops* ops; int of_node; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {unsigned int hwirq; struct irq_host* host; } ;


 int GFP_KERNEL ;


 int IRQ_NOREQUEST ;
 unsigned int NO_IRQ ;
 unsigned int NUM_ISA_INTERRUPTS ;
 int * default_irq_host_match ;
 TYPE_4__* get_irq_desc (unsigned int) ;
 int irq_big_lock ;
 int irq_hosts ;
 TYPE_3__* irq_map ;
 int kfree (struct irq_host*) ;
 int list_add (int *,int *) ;
 scalar_t__ mem_init_done ;
 int of_node_get (struct device_node*) ;
 int pr_debug (char*,unsigned int,struct irq_host*) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct irq_host*,unsigned int,unsigned int) ;
 struct irq_host* zalloc_maybe_bootmem (unsigned int,int ) ;

struct irq_host *irq_alloc_host(struct device_node *of_node,
    unsigned int revmap_type,
    unsigned int revmap_arg,
    struct irq_host_ops *ops,
    irq_hw_number_t inval_irq)
{
 struct irq_host *host;
 unsigned int size = sizeof(struct irq_host);
 unsigned int i;
 unsigned int *rmap;
 unsigned long flags;


 if (revmap_type == 128)
  size += revmap_arg * sizeof(unsigned int);
 host = zalloc_maybe_bootmem(size, GFP_KERNEL);
 if (host == ((void*)0))
  return ((void*)0);


 host->revmap_type = revmap_type;
 host->inval_irq = inval_irq;
 host->ops = ops;
 host->of_node = of_node_get(of_node);

 if (host->ops->match == ((void*)0))
  host->ops->match = default_irq_host_match;

 spin_lock_irqsave(&irq_big_lock, flags);




 if (revmap_type == 129) {
  if (irq_map[0].host != ((void*)0)) {
   spin_unlock_irqrestore(&irq_big_lock, flags);





   if (mem_init_done)
    kfree(host);
   return ((void*)0);
  }
  irq_map[0].host = host;
 }

 list_add(&host->link, &irq_hosts);
 spin_unlock_irqrestore(&irq_big_lock, flags);


 switch(revmap_type) {
 case 129:

  host->inval_irq = 0;

  for (i = 1; i < NUM_ISA_INTERRUPTS; i++) {
   irq_map[i].hwirq = i;
   smp_wmb();
   irq_map[i].host = host;
   smp_wmb();


   get_irq_desc(i)->status &= ~IRQ_NOREQUEST;





   ops->map(host, i, i);
  }
  break;
 case 128:
  rmap = (unsigned int *)(host + 1);
  for (i = 0; i < revmap_arg; i++)
   rmap[i] = NO_IRQ;
  host->revmap_data.linear.size = revmap_arg;
  smp_wmb();
  host->revmap_data.linear.revmap = rmap;
  break;
 default:
  break;
 }

 pr_debug("irq: Allocated host of type %d @0x%p\n", revmap_type, host);

 return host;
}
