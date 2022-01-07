
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CLAMP (int const) ;
 int MAX_OUTER_CROP_VALUE ;
 unsigned char* pwc_crop_table ;

__attribute__((used)) static void copy_image_block_Y(const int *src, unsigned char *dst, unsigned int bytes_per_line, unsigned int scalebits)
{
 int i;
 const int *c = src;
 unsigned char *d = dst;
 for (i = 0; i < 4; i++, c++)
  *d++ = CLAMP((*c) >> scalebits);

 d = dst + bytes_per_line;
 for (i = 0; i < 4; i++, c++)
  *d++ = CLAMP((*c) >> scalebits);

 d = dst + bytes_per_line*2;
 for (i = 0; i < 4; i++, c++)
  *d++ = CLAMP((*c) >> scalebits);

 d = dst + bytes_per_line*3;
 for (i = 0; i < 4; i++, c++)
  *d++ = CLAMP((*c) >> scalebits);

}
