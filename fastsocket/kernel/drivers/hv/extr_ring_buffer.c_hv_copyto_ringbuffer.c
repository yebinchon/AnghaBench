
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {int dummy; } ;


 void* hv_get_ring_buffer (struct hv_ring_buffer_info*) ;
 scalar_t__ hv_get_ring_buffersize (struct hv_ring_buffer_info*) ;
 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static u32 hv_copyto_ringbuffer(
 struct hv_ring_buffer_info *ring_info,
 u32 start_write_offset,
 void *src,
 u32 srclen)
{
 void *ring_buffer = hv_get_ring_buffer(ring_info);
 u32 ring_buffer_size = hv_get_ring_buffersize(ring_info);
 u32 frag_len;


 if (srclen > ring_buffer_size - start_write_offset) {
  frag_len = ring_buffer_size - start_write_offset;
  memcpy(ring_buffer + start_write_offset, src, frag_len);
  memcpy(ring_buffer, src + frag_len, srclen - frag_len);
 } else
  memcpy(ring_buffer + start_write_offset, src, srclen);

 start_write_offset += srclen;
 start_write_offset %= ring_buffer_size;

 return start_write_offset;
}
