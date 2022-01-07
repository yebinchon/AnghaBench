
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {scalar_t__ dps; } ;
struct nvme_dev {char* model; char* firmware_rev; TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ADDITIONAL_STD_INQ_LENGTH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNTI_TRANSLATION_SUCCESS ;
 int STANDARD_INQUIRY_LENGTH ;
 int VERSION_SPC_4 ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int memset (int*,int ,int ) ;
 int min (int,int ) ;
 int nvme_identify (struct nvme_dev*,int ,int ,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;
 int strncpy (int*,char*,int) ;

__attribute__((used)) static int nvme_trans_standard_inquiry_page(struct nvme_ns *ns,
     struct sg_io_hdr *hdr, u8 *inq_response,
     int alloc_len)
{
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ns *id_ns;
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 int xfer_len;
 u8 resp_data_format = 0x02;
 u8 protect;
 u8 cmdque = 0x01 << 1;

 mem = dma_alloc_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
    &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out_dma;
 }


 nvme_sc = nvme_identify(dev, ns->ns_id, 0, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);







 if (res)
  goto out_free;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_free;
 }
 id_ns = mem;
 (id_ns->dps) ? (protect = 0x01) : (protect = 0);

 memset(inq_response, 0, STANDARD_INQUIRY_LENGTH);
 inq_response[2] = VERSION_SPC_4;
 inq_response[3] = resp_data_format;
 inq_response[4] = ADDITIONAL_STD_INQ_LENGTH;
 inq_response[5] = protect;
 inq_response[7] = cmdque;
 strncpy(&inq_response[8], "NVMe    ", 8);
 strncpy(&inq_response[16], dev->model, 16);
 strncpy(&inq_response[32], dev->firmware_rev, 4);

 xfer_len = min(alloc_len, STANDARD_INQUIRY_LENGTH);
 res = nvme_trans_copy_to_user(hdr, inq_response, xfer_len);

 out_free:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
     dma_addr);
 out_dma:
 return res;
}
