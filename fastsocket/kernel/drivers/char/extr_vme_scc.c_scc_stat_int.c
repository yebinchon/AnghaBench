
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ tty; int open_wait; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct scc_port {unsigned int channel; int c_dcd; TYPE_2__ gs; } ;
typedef int irqreturn_t ;


 int ASYNC_CHECK_CD ;
 int COMMAND_REG ;
 int CR_EXTSTAT_RESET ;
 int CR_HIGHEST_IUS_RESET ;
 int IRQ_HANDLED ;
 int SCC_ACCESS_INIT (struct scc_port*) ;
 unsigned char SCCread_NB (int ) ;
 int SCCwrite (int ,int ) ;
 int SCCwrite_NB (int ,int ) ;
 unsigned char SR_DCD ;
 int STATUS_REG ;
 unsigned char* scc_last_status_reg ;
 int tty_hangup (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t scc_stat_int(int irq, void *data)
{
 struct scc_port *port = data;
 unsigned channel = port->channel;
 unsigned char last_sr, sr, changed;
 SCC_ACCESS_INIT(port);

 last_sr = scc_last_status_reg[channel];
 sr = scc_last_status_reg[channel] = SCCread_NB(STATUS_REG);
 changed = last_sr ^ sr;

 if (changed & SR_DCD) {
  port->c_dcd = !!(sr & SR_DCD);
  if (!(port->gs.port.flags & ASYNC_CHECK_CD))
   ;
  else if (port->c_dcd) {
   wake_up_interruptible(&port->gs.port.open_wait);
  }
  else {
   if (port->gs.port.tty)
    tty_hangup (port->gs.port.tty);
  }
 }
 SCCwrite(COMMAND_REG, CR_EXTSTAT_RESET);
 SCCwrite_NB(COMMAND_REG, CR_HIGHEST_IUS_RESET);
 return IRQ_HANDLED;
}
