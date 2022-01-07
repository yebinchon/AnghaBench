
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {int class_valid; scalar_t__ rxsz; } ;
struct fc_logi_s {int node_name; int port_name; TYPE_1__ class3; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;


 int FC_MIN_PDUSZ ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 int be16_to_cpu (scalar_t__) ;
 int wwn_is_equal (int ,int ) ;

enum fc_parse_status
fc_pdisc_parse(struct fchs_s *fchs, wwn_t node_name, wwn_t port_name)
{
 struct fc_logi_s *pdisc = (struct fc_logi_s *) (fchs + 1);

 if (pdisc->class3.class_valid != 1)
  return FC_PARSE_FAILURE;

 if ((be16_to_cpu(pdisc->class3.rxsz) <
  (FC_MIN_PDUSZ - sizeof(struct fchs_s)))
     || (pdisc->class3.rxsz == 0))
  return FC_PARSE_FAILURE;

 if (!wwn_is_equal(pdisc->port_name, port_name))
  return FC_PARSE_FAILURE;

 if (!wwn_is_equal(pdisc->node_name, node_name))
  return FC_PARSE_FAILURE;

 return FC_PARSE_OK;
}
