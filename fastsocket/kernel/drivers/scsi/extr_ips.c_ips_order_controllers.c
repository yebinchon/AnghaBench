
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ad_type; TYPE_1__* nvram; } ;
struct TYPE_3__ {int* adapter_order; } ;
typedef TYPE_1__ IPS_NVRAM_P5 ;
 TYPE_2__** ips_ha ;
 int ips_num_controllers ;
 int ips_shift_controllers (int,int) ;

__attribute__((used)) static void
ips_order_controllers(void)
{
 int i, j, tmp, position = 0;
 IPS_NVRAM_P5 *nvram;
 if (!ips_ha[0])
  return;
 nvram = ips_ha[0]->nvram;

 if (nvram->adapter_order[0]) {
  for (i = 1; i <= nvram->adapter_order[0]; i++) {
   for (j = position; j < ips_num_controllers; j++) {
    switch (ips_ha[j]->ad_type) {
    case 130:
    case 129:
     if (nvram->adapter_order[i] == 'M') {
      ips_shift_controllers(position,
              j);
      position++;
     }
     break;
    case 137:
    case 135:
    case 134:
    case 136:
     if (nvram->adapter_order[i] == 'N') {
      ips_shift_controllers(position,
              j);
      position++;
     }
     break;
    case 131:
    case 132:
    case 133:
    case 128:
     if (nvram->adapter_order[i] == 'S') {
      ips_shift_controllers(position,
              j);
      position++;
     }
     break;
    case 142:
    case 141:
    case 143:
    case 144:
    case 139:
    case 140:
    case 138:
     if (nvram->adapter_order[i] == 'A') {
      ips_shift_controllers(position,
              j);
      position++;
     }
     break;
    default:
     break;
    }
   }
  }

  return;
 }

 tmp = 0;
 for (i = position; i < ips_num_controllers; i++) {
  if (ips_ha[i]->ad_type == 132 ||
      ips_ha[i]->ad_type == 133) {
   ips_shift_controllers(position, i);
   position++;
   tmp = 1;
  }
 }

 if (!tmp)
  return;
 for (i = position; i < ips_num_controllers; i++) {
  if (ips_ha[i]->ad_type == 137 ||
      ips_ha[i]->ad_type == 135 ||
      ips_ha[i]->ad_type == 136 ||
      ips_ha[i]->ad_type == 134) {
   ips_shift_controllers(position, i);
   position++;
  }
 }

 return;
}
