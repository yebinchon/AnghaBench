
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
struct fchs_s {int dummy; } ;
struct fc_ls_rjt_s {int reason_code; } ;
struct TYPE_2__ {int rxsz; int class_valid; } ;
struct fc_logi_s {TYPE_1__ class3; int port_name; } ;
struct fc_els_cmd_s {int els_code; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;




 int FC_LS_RJT_RSN_LOGICAL_BUSY ;
 int FC_MIN_PDUSZ ;
 int FC_PARSE_BUSY ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 int be16_to_cpu (int ) ;
 int wwn_is_equal (int ,int ) ;

enum fc_parse_status
fc_plogi_rsp_parse(struct fchs_s *fchs, int len, wwn_t port_name)
{
 struct fc_els_cmd_s *els_cmd = (struct fc_els_cmd_s *) (fchs + 1);
 struct fc_logi_s *plogi;
 struct fc_ls_rjt_s *ls_rjt;

 switch (els_cmd->els_code) {
 case 128:
  ls_rjt = (struct fc_ls_rjt_s *) (fchs + 1);
  if (ls_rjt->reason_code == FC_LS_RJT_RSN_LOGICAL_BUSY)
   return FC_PARSE_BUSY;
  else
   return FC_PARSE_FAILURE;
 case 129:
  plogi = (struct fc_logi_s *) (fchs + 1);
  if (len < sizeof(struct fc_logi_s))
   return FC_PARSE_FAILURE;

  if (!wwn_is_equal(plogi->port_name, port_name))
   return FC_PARSE_FAILURE;

  if (!plogi->class3.class_valid)
   return FC_PARSE_FAILURE;

  if (be16_to_cpu(plogi->class3.rxsz) < (FC_MIN_PDUSZ))
   return FC_PARSE_FAILURE;

  return FC_PARSE_OK;
 default:
  return FC_PARSE_FAILURE;
 }
}
