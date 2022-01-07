
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct socket_state_t {int Vcc; int flags; int csc_mask; int io_irq; } ;
struct pcmcia_socket {int dummy; } ;


 int CF_CONTROL ;
 int CF_CONTROL_RESET ;
 int EINVAL ;
 int SS_RESET ;
 int driver_name ;
 int omap_readw (int ) ;
 int omap_writew (int ,int ) ;
 int pr_debug (char*,int ,int,int ,int,int ) ;

__attribute__((used)) static int
omap_cf_set_socket(struct pcmcia_socket *sock, struct socket_state_t *s)
{
 u16 control;


 switch (s->Vcc) {
 case 0:
 case 33:
  break;
 default:
  return -EINVAL;
 }

 control = omap_readw(CF_CONTROL);
 if (s->flags & SS_RESET)
  omap_writew(CF_CONTROL_RESET, CF_CONTROL);
 else
  omap_writew(0, CF_CONTROL);

 pr_debug("%s: Vcc %d, io_irq %d, flags %04x csc %04x\n",
  driver_name, s->Vcc, s->io_irq, s->flags, s->csc_mask);

 return 0;
}
