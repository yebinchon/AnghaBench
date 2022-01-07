
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 long PCI66 ;
 int USE_DPLL ;

__attribute__((used)) static int hpt3x2n_use_dpll(struct ata_port *ap, int writing)
{
 long flags = (long)ap->host->private_data;


 if (writing)
  return USE_DPLL;
 if (flags & PCI66)
  return USE_DPLL;
 return 0;
}
