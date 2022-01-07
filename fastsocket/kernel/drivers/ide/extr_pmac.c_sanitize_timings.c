
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; unsigned int* timings; } ;
typedef TYPE_1__ pmac_ide_hwif_t ;
__attribute__((used)) static void
sanitize_timings(pmac_ide_hwif_t *pmif)
{
 unsigned int value, value2 = 0;

 switch(pmif->kind) {
  case 129:
   value = 0x0a820c97;
   value2 = 0x00033031;
   break;
  case 128:
  case 133:
   value = 0x08618a92;
   value2 = 0x00002921;
   break;
  case 131:
   value = 0x0008438c;
   break;
  case 132:
   value = 0x00084526;
   break;
  case 134:
  case 130:
  default:
   value = 0x00074526;
   break;
 }
 pmif->timings[0] = pmif->timings[1] = value;
 pmif->timings[2] = pmif->timings[3] = value2;
}
