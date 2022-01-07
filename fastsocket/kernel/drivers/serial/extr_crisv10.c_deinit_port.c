
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int dma_in_irq_nbr; int dma_in_irq_description; int dma_in_nbr; scalar_t__ dma_in_enabled; int dma_out_irq_nbr; int dma_out_irq_description; int dma_out_nbr; scalar_t__ dma_out_enabled; } ;


 int cris_free_dma (int ,int ) ;
 int free_irq (int ,struct e100_serial*) ;

__attribute__((used)) static void
deinit_port(struct e100_serial *info)
{
 if (info->dma_out_enabled) {
  cris_free_dma(info->dma_out_nbr, info->dma_out_irq_description);
  free_irq(info->dma_out_irq_nbr, info);
 }
 if (info->dma_in_enabled) {
  cris_free_dma(info->dma_in_nbr, info->dma_in_irq_description);
  free_irq(info->dma_in_irq_nbr, info);
 }
}
