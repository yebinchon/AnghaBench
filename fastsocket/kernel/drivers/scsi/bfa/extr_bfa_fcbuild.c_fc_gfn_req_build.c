
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;
struct TYPE_3__ {int wwn; } ;
typedef TYPE_1__ fcgs_gfn_req_t ;


 int CT_GSSUBTYPE_CFGSERVER ;
 int FC_MGMT_SERVER ;
 int GS_FC_GFN_CMD ;
 int bfa_hton3b (int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int ) ;
 int fc_gs_ms_cthdr_build (struct ct_hdr_s*,int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

u16
fc_gfn_req_build(struct fchs_s *fchs, void *pyld, u32 s_id, wwn_t wwn)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 fcgs_gfn_req_t *gfn = (fcgs_gfn_req_t *) (cthdr + 1);
 u32 d_id = bfa_hton3b(FC_MGMT_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, 0);
 fc_gs_ms_cthdr_build(cthdr, s_id, GS_FC_GFN_CMD,
   CT_GSSUBTYPE_CFGSERVER);

 memset(gfn, 0, sizeof(fcgs_gfn_req_t));
 gfn->wwn = wwn;

 return sizeof(struct ct_hdr_s) + sizeof(fcgs_gfn_req_t);
}
