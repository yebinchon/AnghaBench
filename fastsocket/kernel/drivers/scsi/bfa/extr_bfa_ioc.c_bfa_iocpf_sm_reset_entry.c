
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int auto_recover; int fw_mismatch_notified; } ;


 int BFA_FALSE ;
 int bfa_auto_recover ;

__attribute__((used)) static void
bfa_iocpf_sm_reset_entry(struct bfa_iocpf_s *iocpf)
{
 iocpf->fw_mismatch_notified = BFA_FALSE;
 iocpf->auto_recover = bfa_auto_recover;
}
