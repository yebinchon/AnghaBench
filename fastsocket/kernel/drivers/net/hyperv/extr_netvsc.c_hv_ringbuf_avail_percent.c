
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hv_ring_buffer_info {int ring_datasize; } ;


 int hv_get_ringbuffer_availbytes (struct hv_ring_buffer_info*,int*,int*) ;

__attribute__((used)) static inline u32 hv_ringbuf_avail_percent(
  struct hv_ring_buffer_info *ring_info)
{
 u32 avail_read, avail_write;

 hv_get_ringbuffer_availbytes(ring_info, &avail_read, &avail_write);

 return avail_write * 100 / ring_info->ring_datasize;
}
