
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 unsigned int IRQ_BASE_FPGA ;
 int __get_IMR () ;
 int __set_IMR (int) ;

__attribute__((used)) static void frv_fpga_mask(unsigned int irq)
{
 uint16_t imr = __get_IMR();

 imr |= 1 << (irq - IRQ_BASE_FPGA);
 __set_IMR(imr);
}
