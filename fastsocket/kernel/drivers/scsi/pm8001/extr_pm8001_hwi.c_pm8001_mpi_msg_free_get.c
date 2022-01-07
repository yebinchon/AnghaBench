
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mpi_msg_hdr {int dummy; } ;
struct inbound_queue_table {int producer_idx; scalar_t__ base_virt; int consumer_index; int ci_virt; } ;


 int IOMB_SIZE_SPCV ;
 int PM8001_MPI_QUEUE ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int pm8001_read_32 (int ) ;

int pm8001_mpi_msg_free_get(struct inbound_queue_table *circularQ,
       u16 messageSize, void **messagePtr)
{
 u32 offset, consumer_index;
 struct mpi_msg_hdr *msgHeader;
 u8 bcCount = 1;


 if (messageSize > IOMB_SIZE_SPCV) {
  *messagePtr = ((void*)0);
  return -1;
 }


 consumer_index = pm8001_read_32(circularQ->ci_virt);
 circularQ->consumer_index = cpu_to_le32(consumer_index);
 if (((circularQ->producer_idx + bcCount) % PM8001_MPI_QUEUE) ==
  le32_to_cpu(circularQ->consumer_index)) {
  *messagePtr = ((void*)0);
  return -1;
 }

 offset = circularQ->producer_idx * messageSize;

 circularQ->producer_idx = (circularQ->producer_idx + bcCount)
    % PM8001_MPI_QUEUE;


 msgHeader = (struct mpi_msg_hdr *)(circularQ->base_virt + offset);
 *messagePtr = ((void *)msgHeader) + sizeof(struct mpi_msg_hdr);
 return 0;
}
