
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocfc_s {int bfa; } ;


 int bfa_iocfc_disable_submod (int ) ;
 int bfa_isr_disable (int ) ;

__attribute__((used)) static void
bfa_iocfc_sm_failed_entry(struct bfa_iocfc_s *iocfc)
{
 bfa_isr_disable(iocfc->bfa);
 bfa_iocfc_disable_submod(iocfc->bfa);
}
