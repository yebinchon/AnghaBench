
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int dummy; } ;
struct cma_hdr {int dummy; } ;


 scalar_t__ AF_IB ;
 scalar_t__ cma_family (struct rdma_id_private*) ;

__attribute__((used)) static inline int cma_user_data_offset(struct rdma_id_private *id_priv)
{
 return cma_family(id_priv) == AF_IB ? 0 : sizeof(struct cma_hdr);
}
