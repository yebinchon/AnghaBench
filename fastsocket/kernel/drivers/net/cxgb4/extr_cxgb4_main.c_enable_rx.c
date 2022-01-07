
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {int cntxt_id; int intr_params; int napi; scalar_t__ handler; } ;
struct TYPE_2__ {struct sge_rspq** ingr_map; } ;
struct adapter {TYPE_1__ sge; } ;


 int ARRAY_SIZE (struct sge_rspq**) ;
 int INGRESSQID (int ) ;
 int MYPF_REG (int ) ;
 int SEINTARM (int ) ;
 int SGE_PF_GTS ;
 int napi_enable (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void enable_rx(struct adapter *adap)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(adap->sge.ingr_map); i++) {
  struct sge_rspq *q = adap->sge.ingr_map[i];

  if (!q)
   continue;
  if (q->handler)
   napi_enable(&q->napi);

  t4_write_reg(adap, MYPF_REG(SGE_PF_GTS),
        SEINTARM(q->intr_params) |
        INGRESSQID(q->cntxt_id));
 }
}
