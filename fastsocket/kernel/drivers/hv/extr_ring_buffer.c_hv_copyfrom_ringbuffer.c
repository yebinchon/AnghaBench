
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {int dummy; } ;


 void* hv_get_ring_buffer (struct hv_ring_buffer_info*) ;
 scalar_t__ hv_get_ring_buffersize (struct hv_ring_buffer_info*) ;
 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static u32 hv_copyfrom_ringbuffer(
 struct hv_ring_buffer_info *ring_info,
 void *dest,
 u32 destlen,
 u32 start_read_offset)
{
 void *ring_buffer = hv_get_ring_buffer(ring_info);
 u32 ring_buffer_size = hv_get_ring_buffersize(ring_info);

 u32 frag_len;


 if (destlen > ring_buffer_size - start_read_offset) {
  frag_len = ring_buffer_size - start_read_offset;

  memcpy(dest, ring_buffer + start_read_offset, frag_len);
  memcpy(dest + frag_len, ring_buffer, destlen - frag_len);
 } else

  memcpy(dest, ring_buffer + start_read_offset, destlen);


 start_read_offset += destlen;
 start_read_offset %= ring_buffer_size;

 return start_read_offset;
}
