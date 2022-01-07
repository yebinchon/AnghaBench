
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int dummy; } ;
struct nvme_id_ctrl {int* ieee; } ;
struct nvme_dev {int* serial; int* model; TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
typedef int __be32 ;
struct TYPE_2__ {int vendor; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INQ_DEVICE_IDENTIFICATION_PAGE ;
 int SNTI_TRANSLATION_SUCCESS ;
 int STANDARD_INQUIRY_LENGTH ;
 int cpu_to_be32 (int ) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int memcpy (int*,int *,int) ;
 int memset (int*,int ,int ) ;
 int min (int,int ) ;
 int nvme_identify (struct nvme_dev*,int ,int,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_device_id_page(struct nvme_ns *ns, struct sg_io_hdr *hdr,
     u8 *inq_response, int alloc_len)
{
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ctrl *id_ctrl;
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 u8 ieee[4];
 int xfer_len;
 __be32 tmp_id = cpu_to_be32(ns->ns_id);

 mem = dma_alloc_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
     &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out_dma;
 }


 nvme_sc = nvme_identify(dev, 0, 1, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_free;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_free;
 }
 id_ctrl = mem;


 ieee[0] = id_ctrl->ieee[0] << 4;
 ieee[1] = id_ctrl->ieee[0] >> 4 | id_ctrl->ieee[1] << 4;
 ieee[2] = id_ctrl->ieee[1] >> 4 | id_ctrl->ieee[2] << 4;
 ieee[3] = id_ctrl->ieee[2] >> 4;

 memset(inq_response, 0, STANDARD_INQUIRY_LENGTH);
 inq_response[1] = INQ_DEVICE_IDENTIFICATION_PAGE;
 inq_response[3] = 20;

 inq_response[4] = 0x01;
 inq_response[5] = 0x03;
 inq_response[6] = 0x00;
 inq_response[7] = 16;

 inq_response[8] = 0x60 | ieee[3];
 inq_response[9] = ieee[2];
 inq_response[10] = ieee[1];
 inq_response[11] = ieee[0];
 inq_response[12] = (dev->pci_dev->vendor & 0xFF00) >> 8;
 inq_response[13] = (dev->pci_dev->vendor & 0x00FF);
 inq_response[14] = dev->serial[0];
 inq_response[15] = dev->serial[1];
 inq_response[16] = dev->model[0];
 inq_response[17] = dev->model[1];
 memcpy(&inq_response[18], &tmp_id, sizeof(u32));


 xfer_len = min(alloc_len, STANDARD_INQUIRY_LENGTH);
 res = nvme_trans_copy_to_user(hdr, inq_response, xfer_len);

 out_free:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
     dma_addr);
 out_dma:
 return res;
}
