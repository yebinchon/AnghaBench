
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct hv_ring_buffer_info {int ring_lock; void* ring_datasize; void* ring_size; struct hv_ring_buffer* ring_buffer; } ;
struct hv_ring_buffer {scalar_t__ write_index; scalar_t__ read_index; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int memset (struct hv_ring_buffer_info*,int ,int) ;
 int spin_lock_init (int *) ;

int hv_ringbuffer_init(struct hv_ring_buffer_info *ring_info,
     void *buffer, u32 buflen)
{
 if (sizeof(struct hv_ring_buffer) != PAGE_SIZE)
  return -EINVAL;

 memset(ring_info, 0, sizeof(struct hv_ring_buffer_info));

 ring_info->ring_buffer = (struct hv_ring_buffer *)buffer;
 ring_info->ring_buffer->read_index =
  ring_info->ring_buffer->write_index = 0;

 ring_info->ring_size = buflen;
 ring_info->ring_datasize = buflen - sizeof(struct hv_ring_buffer);

 spin_lock_init(&ring_info->ring_lock);

 return 0;
}
