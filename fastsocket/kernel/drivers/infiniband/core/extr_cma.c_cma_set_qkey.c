
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {int ps; int port_num; int device; TYPE_2__ route; } ;
struct rdma_id_private {scalar_t__ qkey; TYPE_3__ id; } ;
struct ib_sa_mcmember_rec {int qkey; int mgid; } ;


 int EINVAL ;



 scalar_t__ RDMA_UDP_QKEY ;
 scalar_t__ be32_to_cpu (int ) ;
 int ib_addr_get_mgid (int *,int *) ;
 int ib_sa_get_mcmember_rec (int ,int ,int *,struct ib_sa_mcmember_rec*) ;

__attribute__((used)) static int cma_set_qkey(struct rdma_id_private *id_priv, u32 qkey)
{
 struct ib_sa_mcmember_rec rec;
 int ret = 0;

 if (id_priv->qkey) {
  if (qkey && id_priv->qkey != qkey)
   return -EINVAL;
  return 0;
 }

 if (qkey) {
  id_priv->qkey = qkey;
  return 0;
 }

 switch (id_priv->id.ps) {
 case 128:
 case 130:
  id_priv->qkey = RDMA_UDP_QKEY;
  break;
 case 129:
  ib_addr_get_mgid(&id_priv->id.route.addr.dev_addr, &rec.mgid);
  ret = ib_sa_get_mcmember_rec(id_priv->id.device,
          id_priv->id.port_num, &rec.mgid,
          &rec);
  if (!ret)
   id_priv->qkey = be32_to_cpu(rec.qkey);
  break;
 default:
  break;
 }
 return ret;
}
