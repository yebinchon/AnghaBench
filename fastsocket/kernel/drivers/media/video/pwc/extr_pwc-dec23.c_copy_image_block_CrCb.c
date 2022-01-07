
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CLAMP (int const) ;
 int MAX_OUTER_CROP_VALUE ;
 unsigned char* pwc_crop_table ;

__attribute__((used)) static void copy_image_block_CrCb(const int *src, unsigned char *dst, unsigned int bytes_per_line, unsigned int scalebits)
{
 int i;
 const int *c1 = src;
 const int *c2 = src + 4;
 unsigned char *d = dst;

 for (i = 0; i < 4; i++, c1++, c2++) {
  *d++ = CLAMP((*c1) >> scalebits);
  *d++ = CLAMP((*c2) >> scalebits);
 }
 c1 = src + 12;
 d = dst + bytes_per_line;
 for (i = 0; i < 4; i++, c1++, c2++) {
  *d++ = CLAMP((*c1) >> scalebits);
  *d++ = CLAMP((*c2) >> scalebits);
 }

}
