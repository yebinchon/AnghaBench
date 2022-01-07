
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_bsg_job {TYPE_1__* request; } ;
struct TYPE_2__ {int msgcode; } ;


 int EINVAL ;




 int zfcp_fc_execute_ct_fc_job (struct fc_bsg_job*) ;
 int zfcp_fc_execute_els_fc_job (struct fc_bsg_job*) ;

__attribute__((used)) static int zfcp_execute_fc_job(struct fc_bsg_job *job)
{
 switch (job->request->msgcode) {
 case 128:
 case 130:
  return zfcp_fc_execute_els_fc_job(job);
 case 129:
 case 131:
  return zfcp_fc_execute_ct_fc_job(job);
 default:
  return -EINVAL;
 }
}
