
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct irq_desc {int dummy; } ;
struct ipu_irq_map {unsigned int irq; } ;
struct ipu_irq_bank {int control; int status; } ;
struct ipu {int dummy; } ;


 int IPU_IRQ_NR_FN_BANKS ;
 int bank_lock ;
 int ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 struct ipu* get_irq_data (unsigned int) ;
 unsigned long ipu_read_reg (struct ipu*,int ) ;
 struct ipu_irq_bank* irq_bank ;
 int pr_err (char*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ipu_irq_map* src2map (int) ;

__attribute__((used)) static void ipu_irq_fn(unsigned int irq, struct irq_desc *desc)
{
 struct ipu *ipu = get_irq_data(irq);
 u32 status;
 int i, line;

 for (i = 0; i < IPU_IRQ_NR_FN_BANKS; i++) {
  struct ipu_irq_bank *bank = irq_bank + i;

  spin_lock(&bank_lock);
  status = ipu_read_reg(ipu, bank->status);

  status &= ipu_read_reg(ipu, bank->control);
  spin_unlock(&bank_lock);
  while ((line = ffs(status))) {
   struct ipu_irq_map *map;

   line--;
   status &= ~(1UL << line);

   spin_lock(&bank_lock);
   map = src2map(32 * i + line);
   if (map)
    irq = map->irq;
   spin_unlock(&bank_lock);

   if (!map) {
    pr_err("IPU: Interrupt on unmapped source %u bank %d\n",
           line, i);
    continue;
   }
   generic_handle_irq(irq);
  }
 }
}
