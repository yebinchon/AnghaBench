
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int mode_select_block_len; int mode_select_num_blocks; int ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int flbas; TYPE_1__* lbaf; int ncap; } ;
struct nvme_dev {TYPE_2__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int ds; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNTI_TRANSLATION_SUCCESS ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int le64_to_cpu (int ) ;
 int nvme_identify (struct nvme_dev*,int ,int ,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_fmt_set_blk_size_count(struct nvme_ns *ns,
          struct sg_io_hdr *hdr)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ns *id_ns;
 u8 flbas;
 if (ns->mode_select_num_blocks == 0 || ns->mode_select_block_len == 0) {
  mem = dma_alloc_coherent(&dev->pci_dev->dev,
   sizeof(struct nvme_id_ns), &dma_addr, GFP_KERNEL);
  if (mem == ((void*)0)) {
   res = -ENOMEM;
   goto out;
  }

  nvme_sc = nvme_identify(dev, ns->ns_id, 0, dma_addr);
  res = nvme_trans_status_code(hdr, nvme_sc);
  if (res)
   goto out_dma;
  if (nvme_sc) {
   res = nvme_sc;
   goto out_dma;
  }
  id_ns = mem;

  if (ns->mode_select_num_blocks == 0)
   ns->mode_select_num_blocks = le64_to_cpu(id_ns->ncap);
  if (ns->mode_select_block_len == 0) {
   flbas = (id_ns->flbas) & 0x0F;
   ns->mode_select_block_len =
      (1 << (id_ns->lbaf[flbas].ds));
  }
 out_dma:
  dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
      mem, dma_addr);
 }
 out:
 return res;
}
