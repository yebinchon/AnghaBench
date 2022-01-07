
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct ipw_dev* priv; } ;
struct ipw_dev {int * hardware; int * network; int * tty; } ;


 int ipwireless_hardware_free (int *) ;
 int ipwireless_network_free (int *) ;
 int ipwireless_tty_free (int *) ;
 int kfree (struct ipw_dev*) ;
 int release_ipwireless (struct ipw_dev*) ;

__attribute__((used)) static void ipwireless_detach(struct pcmcia_device *link)
{
 struct ipw_dev *ipw = link->priv;

 release_ipwireless(ipw);

 if (ipw->tty != ((void*)0))
  ipwireless_tty_free(ipw->tty);
 if (ipw->network != ((void*)0))
  ipwireless_network_free(ipw->network);
 if (ipw->hardware != ((void*)0))
  ipwireless_hardware_free(ipw->hardware);
 kfree(ipw);
}
