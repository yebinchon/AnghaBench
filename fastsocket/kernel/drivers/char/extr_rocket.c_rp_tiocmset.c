
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct r_port* driver_data; } ;
struct TYPE_2__ {int * TxControl; int IndexAddr; } ;
struct r_port {TYPE_1__ channel; } ;
struct file {int dummy; } ;


 int SET_DTR ;
 int SET_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int out32 (int ,int *) ;

__attribute__((used)) static int rp_tiocmset(struct tty_struct *tty, struct file *file,
      unsigned int set, unsigned int clear)
{
 struct r_port *info = tty->driver_data;

 if (set & TIOCM_RTS)
  info->channel.TxControl[3] |= SET_RTS;
 if (set & TIOCM_DTR)
  info->channel.TxControl[3] |= SET_DTR;
 if (clear & TIOCM_RTS)
  info->channel.TxControl[3] &= ~SET_RTS;
 if (clear & TIOCM_DTR)
  info->channel.TxControl[3] &= ~SET_DTR;

 out32(info->channel.IndexAddr, info->channel.TxControl);
 return 0;
}
