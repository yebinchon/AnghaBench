
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;


 int bfa_iocfc_reset_queues (struct bfa_s*) ;
 int bfa_isr_enable (struct bfa_s*) ;

__attribute__((used)) static void
bfa_iocfc_reset_cbfn(void *bfa_arg)
{
 struct bfa_s *bfa = bfa_arg;

 bfa_iocfc_reset_queues(bfa);
 bfa_isr_enable(bfa);
}
