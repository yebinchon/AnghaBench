
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MCFICM_INTC0 ;
 scalar_t__ MCFICM_INTC1 ;
 unsigned long MCFINTC_ICR0 ;
 unsigned long MCFINTC_IMRH ;
 unsigned long MCFINTC_IMRL ;
 unsigned int MCFINT_VECBASE ;
 unsigned long MCF_IPSBAR ;
 scalar_t__ __raw_readb (unsigned long) ;
 int __raw_readl (unsigned long) ;
 int __raw_writeb (int ,unsigned long) ;
 int __raw_writel (int,unsigned long) ;
 int intc_intpri ;

__attribute__((used)) static void intc_irq_unmask(unsigned int irq)
{
 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECBASE + 128)) {
  unsigned long intaddr, imraddr, icraddr;
  u32 val, imrbit;

  irq -= MCFINT_VECBASE;
  intaddr = MCF_IPSBAR;
  intaddr += (irq & 0x40) ? MCFICM_INTC1 : MCFICM_INTC0;
  imraddr = intaddr + ((irq & 0x20) ? MCFINTC_IMRH : MCFINTC_IMRL);
  icraddr = intaddr + MCFINTC_ICR0 + (irq & 0x3f);
  imrbit = 0x1 << (irq & 0x1f);


  if ((irq & 0x20) == 0)
   imrbit |= 0x1;

  if (__raw_readb(icraddr) == 0)
   __raw_writeb(intc_intpri--, icraddr);

  val = __raw_readl(imraddr);
  __raw_writel(val & ~imrbit, imraddr);
 }
}
