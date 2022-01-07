
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct electra_cf_socket {int present; int timer; scalar_t__ active; int socket; } ;


 scalar_t__ POLL_INTERVAL ;
 int SS_DETECT ;
 int electra_cf_present (struct electra_cf_socket*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static void electra_cf_timer(unsigned long _cf)
{
 struct electra_cf_socket *cf = (void *) _cf;
 int present = electra_cf_present(cf);

 if (present != cf->present) {
  cf->present = present;
  pcmcia_parse_events(&cf->socket, SS_DETECT);
 }

 if (cf->active)
  mod_timer(&cf->timer, jiffies + POLL_INTERVAL);
}
