
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_port {int dummy; } ;


 int OP_DTR ;
 int OP_RTS ;
 int SX_DEBUG_MODEMSIGNALS ;
 int func_enter2 () ;
 int func_exit () ;
 int hi_op ;
 int sx_dprintk (int ,char*,int,int) ;
 int sx_read_channel_byte (struct sx_port*,int ) ;
 int sx_write_channel_byte (struct sx_port*,int ,int) ;

__attribute__((used)) static void sx_setsignals(struct sx_port *port, int dtr, int rts)
{
 int t;
 func_enter2();

 t = sx_read_channel_byte(port, hi_op);
 if (dtr >= 0)
  t = dtr ? (t | OP_DTR) : (t & ~OP_DTR);
 if (rts >= 0)
  t = rts ? (t | OP_RTS) : (t & ~OP_RTS);
 sx_write_channel_byte(port, hi_op, t);
 sx_dprintk(SX_DEBUG_MODEMSIGNALS, "setsignals: %d/%d\n", dtr, rts);

 func_exit();
}
