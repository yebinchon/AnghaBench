
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char cable_selection_mask; } ;
struct TYPE_4__ {TYPE_1__ controller; } ;
struct isci_host {int id; TYPE_2__ oem_parameters; } ;


 int cable_selection_override ;
 scalar_t__ is_cable_select_overridden () ;

__attribute__((used)) static unsigned char *to_cable_select(struct isci_host *ihost)
{
 if (is_cable_select_overridden())
  return ((unsigned char *)&cable_selection_override)
   + ihost->id;
 else
  return &ihost->oem_parameters.controller.cable_selection_mask;
}
