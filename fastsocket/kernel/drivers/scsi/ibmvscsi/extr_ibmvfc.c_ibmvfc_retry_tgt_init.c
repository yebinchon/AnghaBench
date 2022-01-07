
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_target {scalar_t__ init_retries; TYPE_1__* vhost; } ;
struct TYPE_2__ {int work_wait_q; } ;


 scalar_t__ IBMVFC_MAX_TGT_INIT_RETRIES ;
 int IBMVFC_TGT_ACTION_DEL_RPORT ;
 int ibmvfc_init_tgt (struct ibmvfc_target*,void (*) (struct ibmvfc_target*)) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int ibmvfc_retry_tgt_init(struct ibmvfc_target *tgt,
      void (*job_step) (struct ibmvfc_target *))
{
 if (++tgt->init_retries > IBMVFC_MAX_TGT_INIT_RETRIES) {
  ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
  wake_up(&tgt->vhost->work_wait_q);
  return 0;
 } else
  ibmvfc_init_tgt(tgt, job_step);
 return 1;
}
