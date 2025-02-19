
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_tprlo_acc_s {scalar_t__ command; TYPE_1__* tprlo_acc_params; int payload_len; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ opa_valid; scalar_t__ rpa_valid; scalar_t__ orig_process_assc; scalar_t__ resp_process_assc; } ;


 scalar_t__ FC_ELS_ACC ;
 int FC_PARSE_ACC_INVAL ;
 int FC_PARSE_NOT_FCP ;
 int FC_PARSE_OK ;
 int FC_PARSE_OPAFLAG_INVAL ;
 int FC_PARSE_OPA_INVAL ;
 int FC_PARSE_RPAFLAG_INVAL ;
 int FC_PARSE_RPA_INVAL ;
 scalar_t__ FC_TYPE_FCP ;
 int be16_to_cpu (int ) ;

u16
fc_tprlo_rsp_parse(struct fchs_s *fchs, int len)
{
 struct fc_tprlo_acc_s *tprlo = (struct fc_tprlo_acc_s *) (fchs + 1);
 int num_pages = 0;
 int page = 0;

 len = len;

 if (tprlo->command != FC_ELS_ACC)
  return FC_PARSE_ACC_INVAL;

 num_pages = (be16_to_cpu(tprlo->payload_len) - 4) / 16;

 for (page = 0; page < num_pages; page++) {
  if (tprlo->tprlo_acc_params[page].type != FC_TYPE_FCP)
   return FC_PARSE_NOT_FCP;
  if (tprlo->tprlo_acc_params[page].opa_valid != 0)
   return FC_PARSE_OPAFLAG_INVAL;
  if (tprlo->tprlo_acc_params[page].rpa_valid != 0)
   return FC_PARSE_RPAFLAG_INVAL;
  if (tprlo->tprlo_acc_params[page].orig_process_assc != 0)
   return FC_PARSE_OPA_INVAL;
  if (tprlo->tprlo_acc_params[page].resp_process_assc != 0)
   return FC_PARSE_RPA_INVAL;
 }
 return FC_PARSE_OK;
}
