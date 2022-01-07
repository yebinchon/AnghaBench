
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct TYPE_2__ {int class_valid; scalar_t__ rxsz; } ;
struct fc_logi_s {TYPE_1__ class3; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;


 scalar_t__ FC_MAX_PDUSZ ;
 scalar_t__ FC_MIN_PDUSZ ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 scalar_t__ be16_to_cpu (scalar_t__) ;

enum fc_parse_status
fc_plogi_parse(struct fchs_s *fchs)
{
 struct fc_logi_s *plogi = (struct fc_logi_s *) (fchs + 1);

 if (plogi->class3.class_valid != 1)
  return FC_PARSE_FAILURE;

 if ((be16_to_cpu(plogi->class3.rxsz) < FC_MIN_PDUSZ)
     || (be16_to_cpu(plogi->class3.rxsz) > FC_MAX_PDUSZ)
     || (plogi->class3.rxsz == 0))
  return FC_PARSE_FAILURE;

 return FC_PARSE_OK;
}
