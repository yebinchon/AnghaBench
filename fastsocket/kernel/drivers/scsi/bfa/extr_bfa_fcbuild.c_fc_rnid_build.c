
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {int els_code; } ;
struct fc_rnid_cmd_s {int node_id_data_format; TYPE_1__ els_cmd; } ;


 int FC_ELS_RNID ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fc_rnid_cmd_s*,int ,int) ;

u16
fc_rnid_build(struct fchs_s *fchs, struct fc_rnid_cmd_s *rnid, u32 d_id,
  u32 s_id, u16 ox_id, u32 data_format)
{
 fc_els_req_build(fchs, d_id, s_id, ox_id);

 memset(rnid, 0, sizeof(struct fc_rnid_cmd_s));

 rnid->els_cmd.els_code = FC_ELS_RNID;
 rnid->node_id_data_format = data_format;

 return sizeof(struct fc_rnid_cmd_s);
}
