
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {unsigned int frame_size; unsigned int cur_dma_frame_addr; int cur_dma_frame_idx; int pdev; } ;
struct b3dfg_buffer {unsigned char** frame; } ;
typedef unsigned int dma_addr_t ;


 int B3D_REG_EC220_DMA_ADDR ;
 int B3D_REG_EC220_DMA_STS ;
 int B3D_REG_EC220_TRF_SIZE ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int) ;
 int cpu_to_le32 (unsigned int) ;
 scalar_t__ pci_dma_mapping_error (int ,unsigned int) ;
 unsigned int pci_map_single (int ,unsigned char*,unsigned int,int ) ;

__attribute__((used)) static int setup_frame_transfer(struct b3dfg_dev *fgdev,
 struct b3dfg_buffer *buf, int frame)
{
 unsigned char *frm_addr;
 dma_addr_t frm_addr_dma;
 unsigned int frm_size = fgdev->frame_size;

 frm_addr = buf->frame[frame];
 frm_addr_dma = pci_map_single(fgdev->pdev, frm_addr,
       frm_size, PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(fgdev->pdev, frm_addr_dma))
  return -ENOMEM;

 fgdev->cur_dma_frame_addr = frm_addr_dma;
 fgdev->cur_dma_frame_idx = frame;

 b3dfg_write32(fgdev, B3D_REG_EC220_DMA_ADDR,
     cpu_to_le32(frm_addr_dma));
 b3dfg_write32(fgdev, B3D_REG_EC220_TRF_SIZE,
     cpu_to_le32(frm_size >> 2));
 b3dfg_write32(fgdev, B3D_REG_EC220_DMA_STS, 0xf);

 return 0;
}
