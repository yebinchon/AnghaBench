
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct vnic_rq {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int RQ_ENET_TYPE_ONLY_SOP ;
 int VNIC_PADDR_TARGET ;
 int rq_enet_desc_enc (struct rq_enet_desc*,int,int ,scalar_t__) ;
 struct rq_enet_desc* vnic_rq_next_desc (struct vnic_rq*) ;
 int vnic_rq_post (struct vnic_rq*,void*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void fnic_queue_rq_desc(struct vnic_rq *rq,
          void *os_buf, dma_addr_t dma_addr,
          u16 len)
{
 struct rq_enet_desc *desc = vnic_rq_next_desc(rq);

 rq_enet_desc_enc(desc,
  (u64)dma_addr | VNIC_PADDR_TARGET,
  RQ_ENET_TYPE_ONLY_SOP,
  (u16)len);

 vnic_rq_post(rq, os_buf, 0, dma_addr, len);
}
