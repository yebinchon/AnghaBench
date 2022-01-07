
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_1__* bfa; } ;
struct TYPE_2__ {int ioc; } ;


 int bfa_ioc_enable (int *) ;

__attribute__((used)) static void
bfa_iocfc_sm_initing_entry(struct bfa_iocfc_s *iocfc)
{
 bfa_ioc_enable(&iocfc->bfa->ioc);
}
