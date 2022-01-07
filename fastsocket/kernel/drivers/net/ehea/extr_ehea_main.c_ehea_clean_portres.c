
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int len; scalar_t__* arr; } ;
struct TYPE_7__ {int len; scalar_t__* arr; } ;
struct TYPE_6__ {int len; scalar_t__* arr; } ;
struct TYPE_5__ {int len; scalar_t__* arr; } ;
struct ehea_port_res {TYPE_4__ sq_skba; TYPE_3__ rq3_skba; TYPE_2__ rq2_skba; TYPE_1__ rq1_skba; int eq; int recv_cq; int send_cq; scalar_t__ qp; int napi; } ;
struct ehea_port {int dummy; } ;


 int dev_kfree_skb (scalar_t__) ;
 int ehea_destroy_cq (int ) ;
 int ehea_destroy_eq (int ) ;
 int ehea_destroy_qp (scalar_t__) ;
 int ehea_rem_smrs (struct ehea_port_res*) ;
 int netif_napi_del (int *) ;
 int vfree (scalar_t__*) ;

__attribute__((used)) static int ehea_clean_portres(struct ehea_port *port, struct ehea_port_res *pr)
{
 int ret, i;

 if (pr->qp)
  netif_napi_del(&pr->napi);

 ret = ehea_destroy_qp(pr->qp);

 if (!ret) {
  ehea_destroy_cq(pr->send_cq);
  ehea_destroy_cq(pr->recv_cq);
  ehea_destroy_eq(pr->eq);

  for (i = 0; i < pr->rq1_skba.len; i++)
   if (pr->rq1_skba.arr[i])
    dev_kfree_skb(pr->rq1_skba.arr[i]);

  for (i = 0; i < pr->rq2_skba.len; i++)
   if (pr->rq2_skba.arr[i])
    dev_kfree_skb(pr->rq2_skba.arr[i]);

  for (i = 0; i < pr->rq3_skba.len; i++)
   if (pr->rq3_skba.arr[i])
    dev_kfree_skb(pr->rq3_skba.arr[i]);

  for (i = 0; i < pr->sq_skba.len; i++)
   if (pr->sq_skba.arr[i])
    dev_kfree_skb(pr->sq_skba.arr[i]);

  vfree(pr->rq1_skba.arr);
  vfree(pr->rq2_skba.arr);
  vfree(pr->rq3_skba.arr);
  vfree(pr->sq_skba.arr);
  ret = ehea_rem_smrs(pr);
 }
 return ret;
}
