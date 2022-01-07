
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct scc_port* driver_data; } ;
struct scc_port {int dummy; } ;


 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCmod (int ,int ,int ) ;
 int TCR_SEND_BREAK ;
 int TX_CTRL_REG ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int scc_break_ctl(struct tty_struct *tty, int break_state)
{
 struct scc_port *port = tty->driver_data;
 unsigned long flags;
 SCC_ACCESS_INIT(port);

 local_irq_save(flags);
 SCCmod(TX_CTRL_REG, ~TCR_SEND_BREAK,
   break_state ? TCR_SEND_BREAK : 0);
 local_irq_restore(flags);
 return 0;
}
