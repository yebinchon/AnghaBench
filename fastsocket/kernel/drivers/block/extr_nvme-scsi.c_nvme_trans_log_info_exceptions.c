
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_smart_log {int* temperature; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {TYPE_2__* pci_dev; } ;
struct TYPE_3__ {void** cdw10; int prp1; void* nsid; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef int dma_addr_t ;
typedef int c ;
struct TYPE_4__ {int dev; } ;


 int BYTES_TO_DWORDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KELVIN_TEMP_FACTOR ;
 int LOG_INFO_EXCP_PAGE_LENGTH ;
 int LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE ;
 int LOG_TEMP_UNKNOWN ;
 int NVME_GET_SMART_LOG_PAGE ;
 int NVME_SC_SUCCESS ;
 int REMAINING_INFO_EXCP_PAGE_LENGTH ;
 int SNTI_TRANSLATION_SUCCESS ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int min (int,int ) ;
 int nvme_admin_get_log_page ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;

__attribute__((used)) static int nvme_trans_log_info_exceptions(struct nvme_ns *ns,
     struct sg_io_hdr *hdr, int alloc_len)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int xfer_len;
 u8 *log_response;
 struct nvme_command c;
 struct nvme_dev *dev = ns->dev;
 struct nvme_smart_log *smart_log;
 dma_addr_t dma_addr;
 void *mem;
 u8 temp_c;
 u16 temp_k;

 log_response = kzalloc(LOG_INFO_EXCP_PAGE_LENGTH, GFP_KERNEL);
 if (log_response == ((void*)0)) {
  res = -ENOMEM;
  goto out_mem;
 }

 mem = dma_alloc_coherent(&dev->pci_dev->dev,
     sizeof(struct nvme_smart_log),
     &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out_dma;
 }


 memset(&c, 0, sizeof(c));
 c.common.opcode = nvme_admin_get_log_page;
 c.common.nsid = cpu_to_le32(0xFFFFFFFF);
 c.common.prp1 = cpu_to_le64(dma_addr);
 c.common.cdw10[0] = cpu_to_le32(((sizeof(struct nvme_smart_log) /
   BYTES_TO_DWORDS) << 16) | NVME_GET_SMART_LOG_PAGE);
 res = nvme_submit_admin_cmd(dev, &c, ((void*)0));
 if (res != NVME_SC_SUCCESS) {
  temp_c = LOG_TEMP_UNKNOWN;
 } else {
  smart_log = mem;
  temp_k = (smart_log->temperature[1] << 8) +
    (smart_log->temperature[0]);
  temp_c = temp_k - KELVIN_TEMP_FACTOR;
 }

 log_response[0] = LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE;

 log_response[3] = REMAINING_INFO_EXCP_PAGE_LENGTH;


 log_response[6] = 0x23;
 log_response[7] = 0x04;


 log_response[10] = temp_c;

 xfer_len = min(alloc_len, LOG_INFO_EXCP_PAGE_LENGTH);
 res = nvme_trans_copy_to_user(hdr, log_response, xfer_len);

 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_smart_log),
     mem, dma_addr);
 out_dma:
 kfree(log_response);
 out_mem:
 return res;
}
