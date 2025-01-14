
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {void* address_lower; void* address_upper; int length; } ;
struct scu_sgl_element_pair {void* next_pair_lower; void* next_pair_upper; TYPE_2__ A; TYPE_2__ B; } ;
struct scatterlist {int dummy; } ;
struct sas_task {scalar_t__ num_scatter; int total_xfer_len; int data_dir; struct scatterlist* scatter; } ;
struct isci_request {int zero_scatter_daddr; struct isci_host* isci_host; } ;
struct isci_host {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int dma_map_single (int *,struct scatterlist*,int ,int ) ;
 int init_sgl_element (TYPE_2__*,struct scatterlist*) ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 void* lower_32_bits (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct scu_sgl_element_pair* to_sgl_element_pair (struct isci_request*,scalar_t__) ;
 int to_sgl_element_pair_dma (struct isci_host*,struct isci_request*,scalar_t__) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void sci_request_build_sgl(struct isci_request *ireq)
{
 struct isci_host *ihost = ireq->isci_host;
 struct sas_task *task = isci_request_access_task(ireq);
 struct scatterlist *sg = ((void*)0);
 dma_addr_t dma_addr;
 u32 sg_idx = 0;
 struct scu_sgl_element_pair *scu_sg = ((void*)0);
 struct scu_sgl_element_pair *prev_sg = ((void*)0);

 if (task->num_scatter > 0) {
  sg = task->scatter;

  while (sg) {
   scu_sg = to_sgl_element_pair(ireq, sg_idx);
   init_sgl_element(&scu_sg->A, sg);
   sg = sg_next(sg);
   if (sg) {
    init_sgl_element(&scu_sg->B, sg);
    sg = sg_next(sg);
   } else
    memset(&scu_sg->B, 0, sizeof(scu_sg->B));

   if (prev_sg) {
    dma_addr = to_sgl_element_pair_dma(ihost,
           ireq,
           sg_idx);

    prev_sg->next_pair_upper =
     upper_32_bits(dma_addr);
    prev_sg->next_pair_lower =
     lower_32_bits(dma_addr);
   }

   prev_sg = scu_sg;
   sg_idx++;
  }
 } else {
  scu_sg = to_sgl_element_pair(ireq, sg_idx);

  dma_addr = dma_map_single(&ihost->pdev->dev,
       task->scatter,
       task->total_xfer_len,
       task->data_dir);

  ireq->zero_scatter_daddr = dma_addr;

  scu_sg->A.length = task->total_xfer_len;
  scu_sg->A.address_upper = upper_32_bits(dma_addr);
  scu_sg->A.address_lower = lower_32_bits(dma_addr);
 }

 if (scu_sg) {
  scu_sg->next_pair_upper = 0;
  scu_sg->next_pair_lower = 0;
 }
}
