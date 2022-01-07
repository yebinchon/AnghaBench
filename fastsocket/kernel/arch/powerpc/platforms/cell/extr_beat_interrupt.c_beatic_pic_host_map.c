
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
struct irq_desc {int status; } ;
typedef int irq_hw_number_t ;
typedef scalar_t__ int64_t ;


 int EIO ;
 int IRQ_LEVEL ;
 scalar_t__ beat_construct_and_connect_irq_plug (unsigned int,int ) ;
 int beatic_pic ;
 struct irq_desc* get_irq_desc (unsigned int) ;
 int handle_fasteoi_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int beatic_pic_host_map(struct irq_host *h, unsigned int virq,
          irq_hw_number_t hw)
{
 struct irq_desc *desc = get_irq_desc(virq);
 int64_t err;

 err = beat_construct_and_connect_irq_plug(virq, hw);
 if (err < 0)
  return -EIO;

 desc->status |= IRQ_LEVEL;
 set_irq_chip_and_handler(virq, &beatic_pic, handle_fasteoi_irq);
 return 0;
}
