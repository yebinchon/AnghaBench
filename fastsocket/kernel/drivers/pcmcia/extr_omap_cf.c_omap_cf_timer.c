
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_cf_socket {unsigned int present; int timer; scalar_t__ active; int socket; } ;


 scalar_t__ POLL_INTERVAL ;
 int SS_DETECT ;
 int driver_name ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned int omap_cf_present () ;
 int pcmcia_parse_events (int *,int ) ;
 int pr_debug (char*,int ,char*) ;

__attribute__((used)) static void omap_cf_timer(unsigned long _cf)
{
 struct omap_cf_socket *cf = (void *) _cf;
 unsigned present = omap_cf_present();

 if (present != cf->present) {
  cf->present = present;
  pr_debug("%s: card %s\n", driver_name,
   present ? "present" : "gone");
  pcmcia_parse_events(&cf->socket, SS_DETECT);
 }

 if (cf->active)
  mod_timer(&cf->timer, jiffies + POLL_INTERVAL);
}
