
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {int napi; scalar_t__ handler; } ;
struct TYPE_2__ {struct sge_rspq** ingr_map; } ;
struct adapter {TYPE_1__ sge; } ;


 int ARRAY_SIZE (struct sge_rspq**) ;
 int napi_disable (int *) ;

__attribute__((used)) static void quiesce_rx(struct adapter *adap)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(adap->sge.ingr_map); i++) {
  struct sge_rspq *q = adap->sge.ingr_map[i];

  if (q && q->handler)
   napi_disable(&q->napi);
 }
}
