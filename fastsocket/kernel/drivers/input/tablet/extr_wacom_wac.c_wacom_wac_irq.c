
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct TYPE_2__ {int type; } ;
 int wacom_bpt_irq (struct wacom_wac*,void*) ;
 int wacom_dtu_irq (struct wacom_wac*,void*) ;
 int wacom_graphire_irq (struct wacom_wac*,void*) ;
 int wacom_intuos_irq (struct wacom_wac*,void*) ;
 int wacom_penpartner_irq (struct wacom_wac*,void*) ;
 int wacom_pl_irq (struct wacom_wac*,void*) ;
 int wacom_ptu_irq (struct wacom_wac*,void*) ;
 int wacom_tpc_irq (struct wacom_wac*,void*) ;

int wacom_wac_irq(struct wacom_wac *wacom_wac, void *wcombo)
{
 switch (wacom_wac->features->type) {
  case 138:
   return wacom_penpartner_irq(wacom_wac, wcombo);

  case 137:
   return wacom_pl_irq(wacom_wac, wcombo);

  case 129:
  case 149:
  case 128:
   return wacom_graphire_irq(wacom_wac, wcombo);

  case 136:
   return wacom_ptu_irq(wacom_wac, wcombo);

  case 150:
   return wacom_dtu_irq(wacom_wac, wcombo);

  case 148:
  case 145:
  case 147:
  case 146:
  case 142:
  case 144:
  case 143:
  case 139:
  case 141:
  case 140:
  case 151:
  case 130:
  case 133:
  case 132:
  case 131:
   return wacom_intuos_irq(wacom_wac, wcombo);

  case 135:
  case 134:
   return wacom_tpc_irq(wacom_wac, wcombo);
  case 152:
   return wacom_bpt_irq(wacom_wac, wcombo);

  default:
   return 0;
 }
 return 0;
}
