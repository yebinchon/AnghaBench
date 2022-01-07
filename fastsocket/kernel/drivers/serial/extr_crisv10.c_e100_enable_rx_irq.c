
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {scalar_t__ uses_dma_in; } ;


 int e100_enable_rxdma_irq (struct e100_serial*) ;
 int e100_enable_serial_data_irq (struct e100_serial*) ;

__attribute__((used)) static inline void e100_enable_rx_irq(struct e100_serial *info)
{
 if (info->uses_dma_in)
  e100_enable_rxdma_irq(info);
 else
  e100_enable_serial_data_irq(info);
}
