
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_IRQ_INT1 ;
 int enable_m32700ut_pld_irq (unsigned int) ;
 int end_mappi_irq (int ) ;

__attribute__((used)) static void end_m32700ut_pld_irq(unsigned int irq)
{
 enable_m32700ut_pld_irq(irq);
 end_mappi_irq(M32R_IRQ_INT1);
}
