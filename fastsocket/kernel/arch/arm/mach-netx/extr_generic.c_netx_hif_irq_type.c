
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_IRQ (char*) ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 int NETX_DPMAS_IF_CONF1 ;
 unsigned int NETX_IRQ_HIF_CHAINED (int ) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int
netx_hif_irq_type(unsigned int _irq, unsigned int type)
{
 unsigned int val, irq;

 val = readl(NETX_DPMAS_IF_CONF1);

 irq = _irq - NETX_IRQ_HIF_CHAINED(0);

 if (type & IRQ_TYPE_EDGE_RISING) {
  DEBUG_IRQ("rising edges\n");
  val |= (1 << 26) << irq;
 }
 if (type & IRQ_TYPE_EDGE_FALLING) {
  DEBUG_IRQ("falling edges\n");
  val &= ~((1 << 26) << irq);
 }
 if (type & IRQ_TYPE_LEVEL_LOW) {
  DEBUG_IRQ("low level\n");
  val &= ~((1 << 26) << irq);
 }
 if (type & IRQ_TYPE_LEVEL_HIGH) {
  DEBUG_IRQ("high level\n");
  val |= (1 << 26) << irq;
 }

 writel(val, NETX_DPMAS_IF_CONF1);

 return 0;
}
