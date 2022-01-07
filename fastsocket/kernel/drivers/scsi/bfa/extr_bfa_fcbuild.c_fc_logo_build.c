
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {int els_code; } ;
struct fc_logo_s {int orig_port_name; int nport_id; TYPE_1__ els_cmd; } ;


 int FC_ELS_LOGO ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fc_logo_s*,char,int) ;

u16
fc_logo_build(struct fchs_s *fchs, struct fc_logo_s *logo, u32 d_id, u32 s_id,
       u16 ox_id, wwn_t port_name)
{
 fc_els_req_build(fchs, d_id, s_id, ox_id);

 memset(logo, '\0', sizeof(struct fc_logo_s));
 logo->els_cmd.els_code = FC_ELS_LOGO;
 logo->nport_id = (s_id);
 logo->orig_port_name = port_name;

 return sizeof(struct fc_logo_s);
}
