
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pci_suscfg; unsigned int off_duration; unsigned int on_duration; } ;


 int SUSMOD ;
 TYPE_1__* gx_params ;
 unsigned int stock_freq ;

__attribute__((used)) static unsigned int gx_get_cpuspeed(unsigned int cpu)
{
 if ((gx_params->pci_suscfg & SUSMOD) == 0)
  return stock_freq;

 return (stock_freq * gx_params->off_duration)
  / (gx_params->on_duration + gx_params->off_duration);
}
