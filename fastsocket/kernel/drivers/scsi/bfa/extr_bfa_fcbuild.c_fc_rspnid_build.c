
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rspnid_req_s {scalar_t__ spn_len; scalar_t__ spn; int dap; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_RSPN_ID ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fcgs_rspnid_req_s*,int ,int) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,scalar_t__) ;

u16
fc_rspnid_build(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
  u8 *name)
{

 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_rspnid_req_s *rspnid =
   (struct fcgs_rspnid_req_s *)(cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, ox_id);
 fc_gs_cthdr_build(cthdr, s_id, GS_RSPN_ID);

 memset(rspnid, 0, sizeof(struct fcgs_rspnid_req_s));

 rspnid->dap = s_id;
 rspnid->spn_len = (u8) strlen((char *)name);
 strncpy((char *)rspnid->spn, (char *)name, rspnid->spn_len);

 return sizeof(struct fcgs_rspnid_req_s) + sizeof(struct ct_hdr_s);
}
