
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ intr_type; } ;
struct s2io_nic {TYPE_1__ config; } ;


 scalar_t__ MSI_X ;
 int remove_inta_isr (struct s2io_nic*) ;
 int remove_msix_isr (struct s2io_nic*) ;

__attribute__((used)) static void s2io_rem_isr(struct s2io_nic *sp)
{
 if (sp->config.intr_type == MSI_X)
  remove_msix_isr(sp);
 else
  remove_inta_isr(sp);
}
