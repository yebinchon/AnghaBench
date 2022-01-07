
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parisc; int Tekram; int Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;
struct sym_device {int dummy; } ;


 int SYM_SYMBIOS_NVRAM ;
 int SYM_TEKRAM_NVRAM ;
 int sym_display_Symbios_nvram (struct sym_device*,int *) ;
 int sym_display_Tekram_nvram (struct sym_device*,int *) ;
 int sym_read_Symbios_nvram (struct sym_device*,int *) ;
 int sym_read_Tekram_nvram (struct sym_device*,int *) ;
 int sym_read_parisc_pdc (struct sym_device*,int *) ;

int sym_read_nvram(struct sym_device *np, struct sym_nvram *nvp)
{
 if (!sym_read_Symbios_nvram(np, &nvp->data.Symbios)) {
  nvp->type = SYM_SYMBIOS_NVRAM;
  sym_display_Symbios_nvram(np, &nvp->data.Symbios);
 } else if (!sym_read_Tekram_nvram(np, &nvp->data.Tekram)) {
  nvp->type = SYM_TEKRAM_NVRAM;
  sym_display_Tekram_nvram(np, &nvp->data.Tekram);
 } else {
  nvp->type = sym_read_parisc_pdc(np, &nvp->data.parisc);
 }
 return nvp->type;
}
