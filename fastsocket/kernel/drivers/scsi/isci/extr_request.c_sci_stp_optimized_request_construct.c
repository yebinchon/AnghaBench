
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct scu_task_context {void* task_type; int transfer_length_bytes; } ;
struct isci_request {struct scu_task_context* tc; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;
 void* SCU_TASK_TYPE_DMA_IN ;
 void* SCU_TASK_TYPE_DMA_OUT ;
 int sci_request_build_sgl (struct isci_request*) ;
 int scu_sata_reqeust_construct_task_context (struct isci_request*,struct scu_task_context*) ;

__attribute__((used)) static void sci_stp_optimized_request_construct(struct isci_request *ireq,
           u8 optimized_task_type,
           u32 len,
           enum dma_data_direction dir)
{
 struct scu_task_context *task_context = ireq->tc;


 scu_sata_reqeust_construct_task_context(ireq, task_context);


 sci_request_build_sgl(ireq);


 task_context->transfer_length_bytes = len;

 if (dir == DMA_TO_DEVICE) {






  task_context->task_type = optimized_task_type + (SCU_TASK_TYPE_DMA_OUT
         - SCU_TASK_TYPE_DMA_IN);
 } else {



  task_context->task_type = optimized_task_type;
 }
}
