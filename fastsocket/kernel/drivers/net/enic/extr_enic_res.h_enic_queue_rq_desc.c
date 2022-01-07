
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct vnic_rq {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int RQ_ENET_TYPE_NOT_SOP ;
 int RQ_ENET_TYPE_ONLY_SOP ;
 int VNIC_PADDR_TARGET ;
 int rq_enet_desc_enc (struct rq_enet_desc*,int,int ,int ) ;
 struct rq_enet_desc* vnic_rq_next_desc (struct vnic_rq*) ;
 int vnic_rq_post (struct vnic_rq*,void*,unsigned int,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void enic_queue_rq_desc(struct vnic_rq *rq,
 void *os_buf, unsigned int os_buf_index,
 dma_addr_t dma_addr, unsigned int len)
{
 struct rq_enet_desc *desc = vnic_rq_next_desc(rq);
 u8 type = os_buf_index ?
  RQ_ENET_TYPE_NOT_SOP : RQ_ENET_TYPE_ONLY_SOP;

 rq_enet_desc_enc(desc,
  (u64)dma_addr | VNIC_PADDR_TARGET,
  type, (u16)len);

 vnic_rq_post(rq, os_buf, os_buf_index, dma_addr, len);
}
