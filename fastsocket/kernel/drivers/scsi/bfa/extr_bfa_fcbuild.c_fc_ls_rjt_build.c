
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {int els_code; } ;
struct fc_ls_rjt_s {int vendor_unique; void* reason_code_expl; void* reason_code; TYPE_1__ els_cmd; } ;
typedef int __be16 ;


 int FC_ELS_LS_RJT ;
 int fc_els_rsp_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fc_ls_rjt_s*,int ,int) ;

u16
fc_ls_rjt_build(struct fchs_s *fchs, struct fc_ls_rjt_s *ls_rjt, u32 d_id,
  u32 s_id, __be16 ox_id, u8 reason_code,
  u8 reason_code_expl)
{
 fc_els_rsp_build(fchs, d_id, s_id, ox_id);
 memset(ls_rjt, 0, sizeof(struct fc_ls_rjt_s));

 ls_rjt->els_cmd.els_code = FC_ELS_LS_RJT;
 ls_rjt->reason_code = reason_code;
 ls_rjt->reason_code_expl = reason_code_expl;
 ls_rjt->vendor_unique = 0x00;

 return sizeof(struct fc_ls_rjt_s);
}
