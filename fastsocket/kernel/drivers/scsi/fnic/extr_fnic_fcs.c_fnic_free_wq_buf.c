
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq_buf {struct fc_frame* os_buf; int len; int dma_addr; } ;
struct vnic_wq {int vdev; } ;
struct fnic {int pdev; } ;
struct fc_frame {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb (int ) ;
 int fp_skb (struct fc_frame*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct fnic* vnic_dev_priv (int ) ;

void fnic_free_wq_buf(struct vnic_wq *wq, struct vnic_wq_buf *buf)
{
 struct fc_frame *fp = buf->os_buf;
 struct fnic *fnic = vnic_dev_priv(wq->vdev);

 pci_unmap_single(fnic->pdev, buf->dma_addr,
    buf->len, PCI_DMA_TODEVICE);

 dev_kfree_skb(fp_skb(fp));
 buf->os_buf = ((void*)0);
}
