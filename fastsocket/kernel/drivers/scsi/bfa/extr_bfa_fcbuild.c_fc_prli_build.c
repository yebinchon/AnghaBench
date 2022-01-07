
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_3__ {int initiator; int retry; int rec_support; int confirm; scalar_t__ task_retry_id; } ;
struct TYPE_4__ {TYPE_1__ servparams; } ;
struct fc_prli_s {TYPE_2__ parampage; int command; } ;


 int FC_ELS_PRLI ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memcpy (struct fc_prli_s*,int *,int) ;
 int prli_tmpl ;

u16
fc_prli_build(struct fchs_s *fchs, void *pld, u32 d_id, u32 s_id,
       u16 ox_id)
{
 struct fc_prli_s *prli = (struct fc_prli_s *) (pld);

 fc_els_req_build(fchs, d_id, s_id, ox_id);
 memcpy(prli, &prli_tmpl, sizeof(struct fc_prli_s));

 prli->command = FC_ELS_PRLI;
 prli->parampage.servparams.initiator = 1;
 prli->parampage.servparams.retry = 1;
 prli->parampage.servparams.rec_support = 1;
 prli->parampage.servparams.task_retry_id = 0;
 prli->parampage.servparams.confirm = 1;

 return sizeof(struct fc_prli_s);
}
