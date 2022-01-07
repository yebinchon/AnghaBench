
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
typedef int bfa_status_t ;



__attribute__((used)) static void
bfa_fcxp_null_comp(void *bfad_fcxp, struct bfa_fcxp_s *fcxp, void *cbarg,
     bfa_status_t req_status, u32 rsp_len,
     u32 resid_len, struct fchs_s *rsp_fchs)
{

}
