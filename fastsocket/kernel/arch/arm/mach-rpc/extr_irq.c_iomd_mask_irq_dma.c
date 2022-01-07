
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOMD_DMAMASK ;
 unsigned int iomd_readb (int ) ;
 int iomd_writeb (unsigned int,int ) ;

__attribute__((used)) static void iomd_mask_irq_dma(unsigned int irq)
{
 unsigned int val, mask;

 mask = 1 << (irq & 7);
 val = iomd_readb(IOMD_DMAMASK);
 iomd_writeb(val & ~mask, IOMD_DMAMASK);
}
