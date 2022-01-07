
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91_cf_socket {unsigned int present; int socket; TYPE_1__* board; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int det_pin; } ;


 int IRQ_HANDLED ;
 int SS_DETECT ;
 unsigned int at91_cf_present (struct at91_cf_socket*) ;
 int driver_name ;
 int pcmcia_parse_events (int *,int ) ;
 int pr_debug (char*,int ,char*) ;

__attribute__((used)) static irqreturn_t at91_cf_irq(int irq, void *_cf)
{
 struct at91_cf_socket *cf = _cf;

 if (irq == cf->board->det_pin) {
  unsigned present = at91_cf_present(cf);


  if (present != cf->present) {
   cf->present = present;
   pr_debug("%s: card %s\n", driver_name,
     present ? "present" : "gone");
   pcmcia_parse_events(&cf->socket, SS_DETECT);
  }
 }

 return IRQ_HANDLED;
}
