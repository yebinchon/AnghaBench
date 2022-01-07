
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;



__attribute__((used)) static void xemaclite_aligned_write(void *src_ptr, u32 *dest_ptr,
        unsigned length)
{
 u32 align_buffer;
 u32 *to_u32_ptr;
 u16 *from_u16_ptr, *to_u16_ptr;

 to_u32_ptr = dest_ptr;
 from_u16_ptr = (u16 *) src_ptr;
 align_buffer = 0;

 for (; length > 3; length -= 4) {
  to_u16_ptr = (u16 *) ((void *) &align_buffer);
  *to_u16_ptr++ = *from_u16_ptr++;
  *to_u16_ptr++ = *from_u16_ptr++;


  *to_u32_ptr++ = align_buffer;
 }
 if (length) {
  u8 *from_u8_ptr, *to_u8_ptr;


  align_buffer = 0;
  to_u8_ptr = (u8 *) &align_buffer;
  from_u8_ptr = (u8 *) from_u16_ptr;


  for (; length > 0; length--)
   *to_u8_ptr++ = *from_u8_ptr++;

  *to_u32_ptr = align_buffer;
 }
}
