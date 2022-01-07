
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ADDR2LAST (void*) ;
 int ADDR2OFFSET (void*) ;
 int isram_check_addr (void const*,size_t) ;
 int isram_read (void*) ;
 int isram_write (void*,int) ;

void *isram_memcpy(void *dest, const void *src, size_t n)
{
 uint64_t data_in = 0, data_out = 0;
 size_t count;
 bool dest_in_l1, src_in_l1, need_data, put_data;
 unsigned char byte, *src_byte, *dest_byte;

 src_byte = (unsigned char *)src;
 dest_byte = (unsigned char *)dest;

 dest_in_l1 = isram_check_addr(dest, n);
 src_in_l1 = isram_check_addr(src, n);

 need_data = 1;
 put_data = 1;
 for (count = 0; count < n; count++) {
  if (src_in_l1) {
   if (need_data) {
    data_in = isram_read(src + count);
    need_data = 0;
   }

   if (ADDR2LAST(src + count))
    need_data = 1;

   byte = (unsigned char)((data_in >> ADDR2OFFSET(src + count)) & 0xff);

  } else {

   byte = src_byte[count];
  }

  if (dest_in_l1) {
   if (put_data) {
    data_out = isram_read(dest + count);
    put_data = 0;
   }

   data_out &= ~((uint64_t)0xff << ADDR2OFFSET(dest + count));
   data_out |= ((uint64_t)byte << ADDR2OFFSET(dest + count));

   if (ADDR2LAST(dest + count)) {
    put_data = 1;
    isram_write(dest + count, data_out);
   }
  } else {

   dest_byte[count] = byte;
  }
 }


 if (dest_in_l1 && !put_data)
  isram_write(dest + count, data_out);

 return dest;
}
