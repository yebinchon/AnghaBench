
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sym_tcb {int dummy; } ;
struct TYPE_2__ {int Tekram; int Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;




 int sym_Symbios_setup_target (struct sym_tcb*,int,int *) ;
 int sym_Tekram_setup_target (struct sym_tcb*,int,int *) ;

void sym_nvram_setup_target(struct sym_tcb *tp, int target, struct sym_nvram *nvp)
{
 switch (nvp->type) {
 case 129:
  sym_Symbios_setup_target(tp, target, &nvp->data.Symbios);
  break;
 case 128:
  sym_Tekram_setup_target(tp, target, &nvp->data.Tekram);
  break;
 default:
  break;
 }
}
