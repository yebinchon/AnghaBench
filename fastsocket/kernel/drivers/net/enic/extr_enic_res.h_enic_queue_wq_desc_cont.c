
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int dummy; } ;
typedef int dma_addr_t ;


 int enic_queue_wq_desc_ex (struct vnic_wq*,void*,int ,unsigned int,int ,int ,int ,int ,int ,int,int ,int,int) ;

__attribute__((used)) static inline void enic_queue_wq_desc_cont(struct vnic_wq *wq,
 void *os_buf, dma_addr_t dma_addr, unsigned int len,
 int eop, int loopback)
{
 enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len,
  0, 0, 0, 0, 0,
  eop, 0 , eop, loopback);
}
