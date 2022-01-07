
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfin_cf_socket {unsigned short present; int timer; scalar_t__ active; int socket; TYPE_1__* pdev; int cd_pfx; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ POLL_INTERVAL ;
 int SS_DETECT ;
 unsigned short bfin_cf_present (int ) ;
 int dev_dbg (int *,char*,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static void bfin_cf_timer(unsigned long _cf)
{
 struct bfin_cf_socket *cf = (void *)_cf;
 unsigned short present = bfin_cf_present(cf->cd_pfx);

 if (present != cf->present) {
  cf->present = present;
  dev_dbg(&cf->pdev->dev, ": card %s\n",
    present ? "present" : "gone");
  pcmcia_parse_events(&cf->socket, SS_DETECT);
 }

 if (cf->active)
  mod_timer(&cf->timer, jiffies + POLL_INTERVAL);
}
