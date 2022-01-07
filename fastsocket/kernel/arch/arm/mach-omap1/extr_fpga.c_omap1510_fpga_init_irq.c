
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INNOVATOR_FPGA_IMR2 ;
 int IRQF_VALID ;
 int IRQ_TYPE_EDGE_RISING ;
 int OMAP1510_FPGA_IMR_HI ;
 int OMAP1510_FPGA_IMR_LO ;
 int OMAP1510_INT_FPGA ;
 int OMAP1510_INT_FPGA_TS ;
 int OMAP_FPGA_IRQ_BASE ;
 int OMAP_FPGA_IRQ_END ;
 int __raw_writeb (int ,int ) ;
 int gpio_direction_input (int) ;
 int gpio_request (int,char*) ;
 int gpio_to_irq (int) ;
 int handle_edge_irq ;
 int innovator_fpga_IRQ_demux ;
 int omap_fpga_irq ;
 int omap_fpga_irq_ack ;
 int set_irq_chained_handler (int ,int ) ;
 int set_irq_chip (int,int *) ;
 int set_irq_flags (int,int ) ;
 int set_irq_handler (int,int ) ;
 int set_irq_type (int ,int ) ;

void omap1510_fpga_init_irq(void)
{
 int i;

 __raw_writeb(0, OMAP1510_FPGA_IMR_LO);
 __raw_writeb(0, OMAP1510_FPGA_IMR_HI);
 __raw_writeb(0, INNOVATOR_FPGA_IMR2);

 for (i = OMAP_FPGA_IRQ_BASE; i < OMAP_FPGA_IRQ_END; i++) {

  if (i == OMAP1510_INT_FPGA_TS) {




   set_irq_chip(i, &omap_fpga_irq_ack);
  }
  else {




   set_irq_chip(i, &omap_fpga_irq);
  }

  set_irq_handler(i, handle_edge_irq);
  set_irq_flags(i, IRQF_VALID);
 }
 gpio_request(13, "FPGA irq");
 gpio_direction_input(13);
 set_irq_type(gpio_to_irq(13), IRQ_TYPE_EDGE_RISING);
 set_irq_chained_handler(OMAP1510_INT_FPGA, innovator_fpga_IRQ_demux);
}
