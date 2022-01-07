
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int poll; } ;
struct sge_qset {TYPE_2__ napi; int netdev; scalar_t__ adap; } ;
struct TYPE_3__ {struct sge_qset* qs; } ;
struct adapter {int flags; TYPE_1__ sge; } ;


 int NAPI_INIT ;
 int SGE_QSETS ;
 int netif_napi_add (int ,TYPE_2__*,int ,int) ;

__attribute__((used)) static void init_napi(struct adapter *adap)
{
 int i;

 for (i = 0; i < SGE_QSETS; i++) {
  struct sge_qset *qs = &adap->sge.qs[i];

  if (qs->adap)
   netif_napi_add(qs->netdev, &qs->napi, qs->napi.poll,
           64);
 }






 adap->flags |= NAPI_INIT;
}
