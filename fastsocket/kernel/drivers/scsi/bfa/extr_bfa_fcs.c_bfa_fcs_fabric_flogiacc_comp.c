
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_fabric_s {int fcs; } ;
typedef int bfa_status_t ;


 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_fabric_flogiacc_comp(void *fcsarg, struct bfa_fcxp_s *fcxp, void *cbarg,
        bfa_status_t status, u32 rsp_len,
        u32 resid_len, struct fchs_s *rspfchs)
{
 struct bfa_fcs_fabric_s *fabric = cbarg;

 bfa_trc(fabric->fcs, status);
}
