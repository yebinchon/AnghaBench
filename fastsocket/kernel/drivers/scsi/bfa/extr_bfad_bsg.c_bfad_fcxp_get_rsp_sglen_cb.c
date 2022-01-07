
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfad_fcxp {struct bfa_sge_s* rsp_sge; } ;
struct bfa_sge_s {int sg_len; } ;



u32
bfad_fcxp_get_rsp_sglen_cb(void *bfad_fcxp, int sgeid)
{
 struct bfad_fcxp *drv_fcxp = bfad_fcxp;
 struct bfa_sge_s *sge;

 sge = drv_fcxp->rsp_sge + sgeid;
 return sge->sg_len;
}
