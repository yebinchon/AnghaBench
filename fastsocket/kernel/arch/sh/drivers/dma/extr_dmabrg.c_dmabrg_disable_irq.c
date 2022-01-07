
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMABRGCR ;
 unsigned long ctrl_inl (int ) ;
 int ctrl_outl (unsigned long,int ) ;

__attribute__((used)) static void dmabrg_disable_irq(unsigned int dmairq)
{
 unsigned long dcr;
 dcr = ctrl_inl(DMABRGCR);
 dcr &= ~(1 << ((dmairq > 1) ? dmairq + 22 : dmairq + 8));
 ctrl_outl(dcr, DMABRGCR);
}
