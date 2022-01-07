
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_irq_map {int irq; } ;
struct TYPE_2__ {unsigned int source; int irq; scalar_t__ bank; } ;


 int CONFIG_MX3_IPU_IRQS ;
 int EBUSY ;
 int ENOMEM ;
 int bank_lock ;
 scalar_t__ irq_bank ;
 TYPE_1__* irq_map ;
 int map_lock ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned int,int) ;
 int pr_err (char*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipu_irq_map* src2map (unsigned int) ;

int ipu_irq_map(unsigned int source)
{
 int i, ret = -ENOMEM;
 struct ipu_irq_map *map;

 might_sleep();

 mutex_lock(&map_lock);
 map = src2map(source);
 if (map) {
  pr_err("IPU: Source %u already mapped to IRQ %u\n", source, map->irq);
  ret = -EBUSY;
  goto out;
 }

 for (i = 0; i < CONFIG_MX3_IPU_IRQS; i++) {
  if (irq_map[i].source < 0) {
   unsigned long lock_flags;

   spin_lock_irqsave(&bank_lock, lock_flags);
   irq_map[i].source = source;
   irq_map[i].bank = irq_bank + source / 32;
   spin_unlock_irqrestore(&bank_lock, lock_flags);

   ret = irq_map[i].irq;
   pr_debug("IPU: mapped source %u to IRQ %u\n",
     source, ret);
   break;
  }
 }
out:
 mutex_unlock(&map_lock);

 if (ret < 0)
  pr_err("IPU: couldn't map source %u: %d\n", source, ret);

 return ret;
}
