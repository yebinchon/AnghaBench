
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int RX_IRQ (struct uart_port*) ;
 int SYSCON (struct uart_port*) ;
 unsigned int SYSCON_UARTEN ;
 int TX_IRQ (struct uart_port*) ;
 int UBRLCR (struct uart_port*) ;
 unsigned int UBRLCR_BREAK ;
 unsigned int UBRLCR_FIFOEN ;
 unsigned int clps_readl (int ) ;
 int clps_writel (unsigned int,int ) ;
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void clps711xuart_shutdown(struct uart_port *port)
{
 unsigned int ubrlcr, syscon;




 free_irq(TX_IRQ(port), port);
 free_irq(RX_IRQ(port), port);




 syscon = clps_readl(SYSCON(port));
 syscon &= ~SYSCON_UARTEN;
 clps_writel(syscon, SYSCON(port));




 ubrlcr = clps_readl(UBRLCR(port));
 ubrlcr &= ~(UBRLCR_FIFOEN | UBRLCR_BREAK);
 clps_writel(ubrlcr, UBRLCR(port));
}
