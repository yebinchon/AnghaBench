
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fchs_s {int dummy; } ;
struct fc_ls_rjt_s {int reason_code; } ;
struct fc_els_cmd_s {int els_code; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;




 int FC_LS_RJT_RSN_LOGICAL_BUSY ;
 int FC_PARSE_BUSY ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;

enum fc_parse_status
fc_els_rsp_parse(struct fchs_s *fchs, int len)
{
 struct fc_els_cmd_s *els_cmd = (struct fc_els_cmd_s *) (fchs + 1);
 struct fc_ls_rjt_s *ls_rjt = (struct fc_ls_rjt_s *) els_cmd;

 len = len;

 switch (els_cmd->els_code) {
 case 128:
  if (ls_rjt->reason_code == FC_LS_RJT_RSN_LOGICAL_BUSY)
   return FC_PARSE_BUSY;
  else
   return FC_PARSE_FAILURE;

 case 129:
  return FC_PARSE_OK;
 }
 return FC_PARSE_OK;
}
