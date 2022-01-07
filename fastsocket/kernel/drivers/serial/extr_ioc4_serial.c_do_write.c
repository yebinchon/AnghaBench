
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_entry {int * ring_sc; int * ring_data; scalar_t__ ring_allsc; } ;
struct ring {int dummy; } ;
struct ioc4_port {int ip_tx_prod; int ip_flags; int ip_tx_lowat; int ip_sscr; TYPE_1__* ip_serial_regs; int ip_port; struct ring* ip_outring; struct hooks* ip_hooks; } ;
struct hooks {int intr_tx_mt; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int stpir; int sscr; int stcir; } ;


 int BUG_ON (int) ;
 int IOC4_SSCR_DMA_EN ;
 int IOC4_TXCB_INT_WHEN_DONE ;
 int IOC4_TXCB_VALID ;
 int LOWAT_WRITTEN ;
 int PROD_CONS_MASK ;
 int enable_intrs (struct ioc4_port*,int ) ;
 int readl (int *) ;
 int uart_tx_stopped (int ) ;
 int writel (int,int *) ;

__attribute__((used)) static inline int do_write(struct ioc4_port *port, char *buf, int len)
{
 int prod_ptr, cons_ptr, total = 0;
 struct ring *outring;
 struct ring_entry *entry;
 struct hooks *hooks = port->ip_hooks;

 BUG_ON(!(len >= 0));

 prod_ptr = port->ip_tx_prod;
 cons_ptr = readl(&port->ip_serial_regs->stcir) & PROD_CONS_MASK;
 outring = port->ip_outring;





 cons_ptr = (cons_ptr - (int)sizeof(struct ring_entry)) & PROD_CONS_MASK;


 while ((prod_ptr != cons_ptr) && (len > 0)) {
  int xx;


  entry = (struct ring_entry *)((caddr_t) outring + prod_ptr);


  entry->ring_allsc = 0;


  for (xx = 0; (xx < 4) && (len > 0); xx++) {
   entry->ring_data[xx] = *buf++;
   entry->ring_sc[xx] = IOC4_TXCB_VALID;
   len--;
   total++;
  }







  if (!(port->ip_flags & LOWAT_WRITTEN) &&
   ((cons_ptr - prod_ptr) & PROD_CONS_MASK)
    <= port->ip_tx_lowat
     * (int)sizeof(struct ring_entry)) {
   port->ip_flags |= LOWAT_WRITTEN;
   entry->ring_sc[0] |= IOC4_TXCB_INT_WHEN_DONE;
  }


  prod_ptr += sizeof(struct ring_entry);
  prod_ptr &= PROD_CONS_MASK;
 }


 if (total > 0 && !(port->ip_sscr & IOC4_SSCR_DMA_EN)) {
  port->ip_sscr |= IOC4_SSCR_DMA_EN;
  writel(port->ip_sscr, &port->ip_serial_regs->sscr);
 }




 if (!uart_tx_stopped(port->ip_port)) {
  writel(prod_ptr, &port->ip_serial_regs->stpir);




  if (total > 0)
   enable_intrs(port, hooks->intr_tx_mt);
 }
 port->ip_tx_prod = prod_ptr;
 return total;
}
