
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int flbas; int ncap; TYPE_1__* lbaf; } ;
struct nvme_dev {TYPE_2__* pci_dev; } ;
typedef int dma_addr_t ;
typedef int __be64 ;
typedef int __be32 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int ds; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MODE_PAGE_BLK_DES_LEN ;
 int MODE_PAGE_LLBAA_BLK_DES_LEN ;
 int SNTI_INTERNAL_ERROR ;
 int SNTI_TRANSLATION_SUCCESS ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int nvme_identify (struct nvme_dev*,int ,int ,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_fill_blk_desc(struct nvme_ns *ns, struct sg_io_hdr *hdr,
        u8 *resp, int len, u8 llbaa)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ns *id_ns;
 u8 flbas;
 u32 lba_length;

 if (llbaa == 0 && len < MODE_PAGE_BLK_DES_LEN)
  return SNTI_INTERNAL_ERROR;
 else if (llbaa > 0 && len < MODE_PAGE_LLBAA_BLK_DES_LEN)
  return SNTI_INTERNAL_ERROR;

 mem = dma_alloc_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
       &dma_addr, GFP_KERNEL);
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
 flbas = (id_ns->flbas) & 0x0F;
 lba_length = (1 << (id_ns->lbaf[flbas].ds));

 if (llbaa == 0) {
  __be32 tmp_cap = cpu_to_be32(le64_to_cpu(id_ns->ncap));

  __be32 tmp_len = cpu_to_be32(lba_length & 0x00FFFFFF);

  memcpy(resp, &tmp_cap, sizeof(u32));
  memcpy(&resp[4], &tmp_len, sizeof(u32));
 } else {
  __be64 tmp_cap = cpu_to_be64(le64_to_cpu(id_ns->ncap));
  __be32 tmp_len = cpu_to_be32(lba_length);

  memcpy(resp, &tmp_cap, sizeof(u64));

  memcpy(&resp[12], &tmp_len, sizeof(u32));
 }

 out_dma:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
     dma_addr);
 out:
 return res;
}
