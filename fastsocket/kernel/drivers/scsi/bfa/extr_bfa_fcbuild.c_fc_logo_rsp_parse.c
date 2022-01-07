
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_els_cmd_s {scalar_t__ els_code; } ;


 scalar_t__ FC_ELS_ACC ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;

u16
fc_logo_rsp_parse(struct fchs_s *fchs, int len)
{
 struct fc_els_cmd_s *els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

 len = len;
 if (els_cmd->els_code != FC_ELS_ACC)
  return FC_PARSE_FAILURE;

 return FC_PARSE_OK;
}
