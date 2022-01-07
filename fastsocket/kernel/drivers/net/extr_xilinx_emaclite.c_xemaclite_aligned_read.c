
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;



__attribute__((used)) static void xemaclite_aligned_read(u32 *src_ptr, u8 *dest_ptr,
       unsigned length)
{
 u16 *to_u16_ptr, *from_u16_ptr;
 u32 *from_u32_ptr;
 u32 align_buffer;

 from_u32_ptr = src_ptr;
 to_u16_ptr = (u16 *) dest_ptr;

 for (; length > 3; length -= 4) {

  align_buffer = *from_u32_ptr++;
  from_u16_ptr = (u16 *)&align_buffer;


  *to_u16_ptr++ = *from_u16_ptr++;
  *to_u16_ptr++ = *from_u16_ptr++;
 }

 if (length) {
  u8 *to_u8_ptr, *from_u8_ptr;


  to_u8_ptr = (u8 *) to_u16_ptr;
  align_buffer = *from_u32_ptr++;
  from_u8_ptr = (u8 *) &align_buffer;


  for (; length > 0; length--)
   *to_u8_ptr = *from_u8_ptr;
 }
}
