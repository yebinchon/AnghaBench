
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_ci_state {int status; } ;
struct dvb_ca_en50221 {struct netup_ci_state* data; } ;


 int EINVAL ;
 int NETUP_IRQ_DETAM ;
 int ci_irq_flags () ;
 int netup_ci_set_irq (struct dvb_ca_en50221*,int) ;

int netup_poll_ci_slot_status(struct dvb_ca_en50221 *en50221, int slot, int open)
{
 struct netup_ci_state *state = en50221->data;

 if (0 != slot)
  return -EINVAL;

 netup_ci_set_irq(en50221, open ? (NETUP_IRQ_DETAM | ci_irq_flags())
   : NETUP_IRQ_DETAM);

 return state->status;
}
