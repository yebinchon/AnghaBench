
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rnnid_req_s {int node_name; int port_id; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_RNN_ID ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fcgs_rnnid_req_s*,int ,int) ;

u16
fc_rnnid_build(struct fchs_s *fchs, void *pyld, u32 s_id, u32 port_id,
        wwn_t node_name)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_rnnid_req_s *rnnid = (struct fcgs_rnnid_req_s *)(cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, 0);
 fc_gs_cthdr_build(cthdr, s_id, GS_RNN_ID);

 memset(rnnid, 0, sizeof(struct fcgs_rnnid_req_s));
 rnnid->port_id = port_id;
 rnnid->node_name = node_name;

 return sizeof(struct fcgs_rnnid_req_s) + sizeof(struct ct_hdr_s);
}
