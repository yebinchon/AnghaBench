
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq_buf {int os_buf; int len; int dma_addr; } ;
struct vnic_rq {int vdev; } ;
struct enic {int pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_any (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct enic* vnic_dev_priv (int ) ;

__attribute__((used)) static void enic_free_rq_buf(struct vnic_rq *rq, struct vnic_rq_buf *buf)
{
 struct enic *enic = vnic_dev_priv(rq->vdev);

 if (!buf->os_buf)
  return;

 pci_unmap_single(enic->pdev, buf->dma_addr,
  buf->len, PCI_DMA_FROMDEVICE);
 dev_kfree_skb_any(buf->os_buf);
}
