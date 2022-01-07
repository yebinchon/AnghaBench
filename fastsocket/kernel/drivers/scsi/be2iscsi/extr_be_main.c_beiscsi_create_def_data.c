
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct phys_addr {int dummy; } ;
struct TYPE_12__ {int id; } ;
struct hwi_controller {TYPE_6__ default_pdu_data; } ;
struct be_dma_mem {unsigned long dma; } ;
struct be_queue_info {int id; struct be_dma_mem dma_mem; } ;
struct hwi_context_memory {struct be_queue_info be_def_dataq; struct be_queue_info* be_cq; } ;
struct TYPE_11__ {int defpdu_data_sz; } ;
struct beiscsi_hba {TYPE_5__ params; int ctrl; struct be_mem_descriptor* init_mem; } ;
struct be_mem_descriptor {TYPE_4__* mem_array; } ;
struct TYPE_7__ {scalar_t__ address; } ;
struct TYPE_8__ {TYPE_1__ a64; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {int size; TYPE_3__ bus_address; void* virtual_address; } ;


 int BEISCSI_LOG_INIT ;
 int HWI_MEM_ASYNC_DATA_RING ;
 int KERN_ERR ;
 int KERN_INFO ;
 int be_cmd_create_default_pdu_queue (int *,struct be_queue_info*,struct be_queue_info*,unsigned int,int ) ;
 int be_fill_queue (struct be_queue_info*,int,int,void*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int hwi_post_async_buffers (struct beiscsi_hba*,int ) ;

__attribute__((used)) static int
beiscsi_create_def_data(struct beiscsi_hba *phba,
   struct hwi_context_memory *phwi_context,
   struct hwi_controller *phwi_ctrlr,
   unsigned int def_pdu_ring_sz)
{
 unsigned int idx;
 int ret;
 struct be_queue_info *dataq, *cq;
 struct be_dma_mem *mem;
 struct be_mem_descriptor *mem_descr;
 void *dq_vaddress;

 idx = 0;
 dataq = &phwi_context->be_def_dataq;
 cq = &phwi_context->be_cq[0];
 mem = &dataq->dma_mem;
 mem_descr = phba->init_mem;
 mem_descr += HWI_MEM_ASYNC_DATA_RING;
 dq_vaddress = mem_descr->mem_array[idx].virtual_address;
 ret = be_fill_queue(dataq, mem_descr->mem_array[0].size /
       sizeof(struct phys_addr),
       sizeof(struct phys_addr), dq_vaddress);
 if (ret) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : be_fill_queue Failed for DEF PDU DATA\n");
  return ret;
 }
 mem->dma = (unsigned long)mem_descr->mem_array[idx].
      bus_address.u.a64.address;
 ret = be_cmd_create_default_pdu_queue(&phba->ctrl, cq, dataq,
           def_pdu_ring_sz,
           phba->params.defpdu_data_sz);
 if (ret) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d be_cmd_create_default_pdu_queue"
       " Failed for DEF PDU DATA\n");
  return ret;
 }
 phwi_ctrlr->default_pdu_data.id = phwi_context->be_def_dataq.id;
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BM_%d : iscsi def data id is %d\n",
      phwi_context->be_def_dataq.id);

 hwi_post_async_buffers(phba, 0);
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BM_%d : DEFAULT PDU DATA RING CREATED\n");

 return 0;
}
