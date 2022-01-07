
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_gidft_req_s {scalar_t__ area_id; scalar_t__ domain_id; int fc4_type; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_GID_FT ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fcgs_gidft_req_s*,int ,int) ;

u16
fc_gid_ft_build(struct fchs_s *fchs, void *pyld, u32 s_id, u8 fc4_type)
{

 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_gidft_req_s *gidft = (struct fcgs_gidft_req_s *)(cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, 0);

 fc_gs_cthdr_build(cthdr, s_id, GS_GID_FT);

 memset(gidft, 0, sizeof(struct fcgs_gidft_req_s));
 gidft->fc4_type = fc4_type;
 gidft->domain_id = 0;
 gidft->area_id = 0;

 return sizeof(struct fcgs_gidft_req_s) + sizeof(struct ct_hdr_s);
}
