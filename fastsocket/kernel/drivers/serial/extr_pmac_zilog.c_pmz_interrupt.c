
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;
struct uart_pmac_port {TYPE_1__ port; int * node; struct uart_pmac_port* mate; } ;
struct tty_struct {int dummy; } ;
typedef int irqreturn_t ;


 int CHAEXT ;
 int CHARxIP ;
 int CHATxIP ;
 int CHBEXT ;
 int CHBRxIP ;
 int CHBTxIP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int R0 ;
 int R3 ;
 int RES_H_IUS ;
 int pmz_debug (char*,...) ;
 struct uart_pmac_port* pmz_get_port_A (struct uart_pmac_port*) ;
 struct tty_struct* pmz_receive_chars (struct uart_pmac_port*) ;
 int pmz_status_handle (struct uart_pmac_port*) ;
 int pmz_transmit_chars (struct uart_pmac_port*) ;
 int read_zsreg (struct uart_pmac_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int write_zsreg (struct uart_pmac_port*,int ,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static irqreturn_t pmz_interrupt(int irq, void *dev_id)
{
 struct uart_pmac_port *uap = dev_id;
 struct uart_pmac_port *uap_a;
 struct uart_pmac_port *uap_b;
 int rc = IRQ_NONE;
 struct tty_struct *tty;
 u8 r3;

 uap_a = pmz_get_port_A(uap);
 uap_b = uap_a->mate;

        spin_lock(&uap_a->port.lock);
 r3 = read_zsreg(uap_a, R3);





 tty = ((void*)0);
        if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
  write_zsreg(uap_a, R0, RES_H_IUS);
  zssync(uap_a);
         if (r3 & CHAEXT)
          pmz_status_handle(uap_a);
  if (r3 & CHARxIP)
   tty = pmz_receive_chars(uap_a);
         if (r3 & CHATxIP)
          pmz_transmit_chars(uap_a);
         rc = IRQ_HANDLED;
        }
        spin_unlock(&uap_a->port.lock);
 if (tty != ((void*)0))
  tty_flip_buffer_push(tty);

 if (uap_b->node == ((void*)0))
  goto out;

        spin_lock(&uap_b->port.lock);
 tty = ((void*)0);
 if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
  write_zsreg(uap_b, R0, RES_H_IUS);
  zssync(uap_b);
         if (r3 & CHBEXT)
          pmz_status_handle(uap_b);
                if (r3 & CHBRxIP)
          tty = pmz_receive_chars(uap_b);
         if (r3 & CHBTxIP)
          pmz_transmit_chars(uap_b);
         rc = IRQ_HANDLED;
        }
        spin_unlock(&uap_b->port.lock);
 if (tty != ((void*)0))
  tty_flip_buffer_push(tty);

 out:



 return rc;
}
