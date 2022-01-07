
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_s {int ioc; } ;
struct TYPE_2__ {int (* detach ) (struct bfa_s*) ;} ;


 int bfa_ioc_detach (int *) ;
 TYPE_1__** hal_mods ;
 int stub1 (struct bfa_s*) ;

void
bfa_detach(struct bfa_s *bfa)
{
 int i;

 for (i = 0; hal_mods[i]; i++)
  hal_mods[i]->detach(bfa);
 bfa_ioc_detach(&bfa->ioc);
}
