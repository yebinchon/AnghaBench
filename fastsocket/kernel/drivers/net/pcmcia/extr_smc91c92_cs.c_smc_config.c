
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int NumPorts1; int BasePort1; } ;
struct pcmcia_device {TYPE_1__ io; struct net_device* priv; } ;
struct net_device {int base_addr; } ;


 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int smc_configcheck ;

__attribute__((used)) static int smc_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    int i;

    link->io.NumPorts1 = 16;
    i = pcmcia_loop_config(link, smc_configcheck, ((void*)0));
    if (!i)
     dev->base_addr = link->io.BasePort1;

    return i;
}
