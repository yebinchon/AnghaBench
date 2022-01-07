
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;
struct mpic {scalar_t__ spurious_vec; scalar_t__* ipi_vecs; int flags; scalar_t__ irq_count; struct irq_chip hc_ht_irq; struct irq_chip hc_irq; struct irq_chip hc_ipi; scalar_t__ protected; } ;
struct irq_host {struct mpic* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 int DBG (char*,...) ;
 int EINVAL ;
 int IRQ_TYPE_NONE ;
 int MPIC_PRIMARY ;
 int WARN_ON (int) ;
 int handle_fasteoi_irq ;
 int handle_percpu_irq ;
 scalar_t__ mpic_is_ht_interrupt (struct mpic*,scalar_t__) ;
 int mpic_msi_reserve_hwirq (struct mpic*,scalar_t__) ;
 int set_irq_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int set_irq_chip_data (unsigned int,struct mpic*) ;
 int set_irq_type (unsigned int,int ) ;
 scalar_t__ test_bit (scalar_t__,scalar_t__) ;

__attribute__((used)) static int mpic_host_map(struct irq_host *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct mpic *mpic = h->host_data;
 struct irq_chip *chip;

 DBG("mpic: map virq %d, hwirq 0x%lx\n", virq, hw);

 if (hw == mpic->spurious_vec)
  return -EINVAL;
 if (mpic->protected && test_bit(hw, mpic->protected))
  return -EINVAL;
 if (hw >= mpic->irq_count)
  return -EINVAL;

 mpic_msi_reserve_hwirq(mpic, hw);


 chip = &mpic->hc_irq;







 DBG("mpic: mapping to irq chip @%p\n", chip);

 set_irq_chip_data(virq, mpic);
 set_irq_chip_and_handler(virq, chip, handle_fasteoi_irq);


 set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
