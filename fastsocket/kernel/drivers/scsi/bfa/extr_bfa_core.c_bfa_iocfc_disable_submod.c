
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ submod_enabled; } ;
struct bfa_s {TYPE_1__ iocfc; } ;
struct TYPE_4__ {int (* iocdisable ) (struct bfa_s*) ;} ;


 scalar_t__ BFA_FALSE ;
 TYPE_2__** hal_mods ;
 int stub1 (struct bfa_s*) ;

__attribute__((used)) static void
bfa_iocfc_disable_submod(struct bfa_s *bfa)
{
 int i;

 if (bfa->iocfc.submod_enabled == BFA_FALSE)
  return;

 for (i = 0; hal_mods[i]; i++)
  hal_mods[i]->iocdisable(bfa);

 bfa->iocfc.submod_enabled = BFA_FALSE;
}
