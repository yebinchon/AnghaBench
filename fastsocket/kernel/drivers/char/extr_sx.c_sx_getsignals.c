
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct sx_port {TYPE_1__ gs; int c_dcd; } ;


 int IP_CTS ;
 int IP_DCD ;
 int IP_DSR ;
 int IP_RI ;
 int OP_DTR ;
 int OP_RTS ;
 int SX_DEBUG_MODEMSIGNALS ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;
 int hi_ip ;
 int hi_op ;
 int hi_state ;
 int sx_dprintk (int ,char*,int,int,int ,int ,int,int) ;
 int sx_read_channel_byte (struct sx_port*,int ) ;
 int tty_port_carrier_raised (int *) ;

__attribute__((used)) static int sx_getsignals(struct sx_port *port)
{
 int i_stat, o_stat;

 o_stat = sx_read_channel_byte(port, hi_op);
 i_stat = sx_read_channel_byte(port, hi_ip);

 sx_dprintk(SX_DEBUG_MODEMSIGNALS, "getsignals: %d/%d  (%d/%d) "
   "%02x/%02x\n",
   (o_stat & OP_DTR) != 0, (o_stat & OP_RTS) != 0,
   port->c_dcd, tty_port_carrier_raised(&port->gs.port),
   sx_read_channel_byte(port, hi_ip),
   sx_read_channel_byte(port, hi_state));

 return (((o_stat & OP_DTR) ? TIOCM_DTR : 0) |
  ((o_stat & OP_RTS) ? TIOCM_RTS : 0) |
  ((i_stat & IP_CTS) ? TIOCM_CTS : 0) |
  ((i_stat & IP_DCD) ? TIOCM_CAR : 0) |
  ((i_stat & IP_DSR) ? TIOCM_DSR : 0) |
  ((i_stat & IP_RI) ? TIOCM_RNG : 0));
}
