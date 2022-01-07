
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {int cur_dma_frame_idx; int buffer_lock; scalar_t__ cur_dma_frame_addr; int frame_size; int pdev; scalar_t__ triplet_ready; scalar_t__ transmission_enabled; } ;


 int B3D_REG_HW_CTRL ;
 int PCI_DMA_FROMDEVICE ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int ) ;
 int dequeue_all_buffers (struct b3dfg_dev*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void handle_cstate_unplug(struct b3dfg_dev *fgdev)
{

 b3dfg_write32(fgdev, B3D_REG_HW_CTRL, 0);


 spin_lock(&fgdev->buffer_lock);
 fgdev->transmission_enabled = 0;

 fgdev->cur_dma_frame_idx = -1;
 fgdev->triplet_ready = 0;
 if (fgdev->cur_dma_frame_addr) {
  pci_unmap_single(fgdev->pdev, fgdev->cur_dma_frame_addr,
     fgdev->frame_size, PCI_DMA_FROMDEVICE);
  fgdev->cur_dma_frame_addr = 0;
 }
 dequeue_all_buffers(fgdev);
 spin_unlock(&fgdev->buffer_lock);
}
