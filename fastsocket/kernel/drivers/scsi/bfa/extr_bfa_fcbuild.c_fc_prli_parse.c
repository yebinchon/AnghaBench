
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initiator; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ servparams; int imagepair; } ;
struct fc_prli_s {TYPE_2__ parampage; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;


 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 scalar_t__ FC_TYPE_FCP ;

enum fc_parse_status
fc_prli_parse(struct fc_prli_s *prli)
{
 if (prli->parampage.type != FC_TYPE_FCP)
  return FC_PARSE_FAILURE;

 if (!prli->parampage.imagepair)
  return FC_PARSE_FAILURE;

 if (!prli->parampage.servparams.initiator)
  return FC_PARSE_FAILURE;

 return FC_PARSE_OK;
}
