
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int dummy; } ;
struct idr {int dummy; } ;


 scalar_t__ AF_IB ;
 int EPROTONOSUPPORT ;
 int cma_alloc_any_port (struct idr*,struct rdma_id_private*) ;
 scalar_t__ cma_any_port (int ) ;
 scalar_t__ cma_family (struct rdma_id_private*) ;
 struct idr* cma_select_ib_ps (struct rdma_id_private*) ;
 struct idr* cma_select_inet_ps (struct rdma_id_private*) ;
 int cma_src_addr (struct rdma_id_private*) ;
 int cma_use_port (struct idr*,struct rdma_id_private*) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_get_port(struct rdma_id_private *id_priv)
{
 struct idr *ps;
 int ret;

 if (cma_family(id_priv) != AF_IB)
  ps = cma_select_inet_ps(id_priv);
 else
  ps = cma_select_ib_ps(id_priv);
 if (!ps)
  return -EPROTONOSUPPORT;

 mutex_lock(&lock);
 if (cma_any_port(cma_src_addr(id_priv)))
  ret = cma_alloc_any_port(ps, id_priv);
 else
  ret = cma_use_port(ps, id_priv);
 mutex_unlock(&lock);

 return ret;
}
