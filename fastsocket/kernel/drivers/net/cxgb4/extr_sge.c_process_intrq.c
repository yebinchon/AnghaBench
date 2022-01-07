
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_rspq {int iqe_len; int intr_params; int cntxt_id; scalar_t__ cur_desc; } ;
struct rsp_ctrl {int pldbuflen_qid; int type_gen; } ;
struct TYPE_4__ {int intrq_lock; TYPE_1__** ingr_map; scalar_t__ ingr_start; struct sge_rspq intrq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int napi; } ;


 int CIDXINC (unsigned int) ;
 int INGRESSQID (int ) ;
 int MYPF_REG (int ) ;
 scalar_t__ RSPD_TYPE (int ) ;
 scalar_t__ RSP_TYPE_INTR ;
 int SEINTARM (int ) ;
 int SGE_PF_GTS ;
 int is_new_response (struct rsp_ctrl const*,struct sge_rspq*) ;
 int napi_schedule (int *) ;
 unsigned int ntohl (int ) ;
 int rmb () ;
 int rspq_next (struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static unsigned int process_intrq(struct adapter *adap)
{
 unsigned int credits;
 const struct rsp_ctrl *rc;
 struct sge_rspq *q = &adap->sge.intrq;

 spin_lock(&adap->sge.intrq_lock);
 for (credits = 0; ; credits++) {
  rc = (void *)q->cur_desc + (q->iqe_len - sizeof(*rc));
  if (!is_new_response(rc, q))
   break;

  rmb();
  if (RSPD_TYPE(rc->type_gen) == RSP_TYPE_INTR) {
   unsigned int qid = ntohl(rc->pldbuflen_qid);

   qid -= adap->sge.ingr_start;
   napi_schedule(&adap->sge.ingr_map[qid]->napi);
  }

  rspq_next(q);
 }

 t4_write_reg(adap, MYPF_REG(SGE_PF_GTS), CIDXINC(credits) |
       INGRESSQID(q->cntxt_id) | SEINTARM(q->intr_params));
 spin_unlock(&adap->sge.intrq_lock);
 return credits;
}
