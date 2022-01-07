
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtrr_type ;


 unsigned int CX86_ARR_BASE ;
 unsigned int CX86_RCR_BASE ;



 unsigned long PAGE_SHIFT ;
 int post_set () ;
 int prepare_set () ;
 int setCx86 (unsigned int,unsigned char) ;

__attribute__((used)) static void cyrix_set_arr(unsigned int reg, unsigned long base,
     unsigned long size, mtrr_type type)
{
 unsigned char arr, arr_type, arr_size;

 arr = CX86_ARR_BASE + (reg << 1) + reg;


 if (reg >= 7)
  size >>= 6;

 size &= 0x7fff;
 for (arr_size = 0; size; arr_size++, size >>= 1)
  ;

 if (reg < 7) {
  switch (type) {
  case 130:
   arr_type = 1;
   break;
  case 129:
   arr_type = 9;
   break;
  case 128:
   arr_type = 24;
   break;
  default:
   arr_type = 8;
   break;
  }
 } else {
  switch (type) {
  case 130:
   arr_type = 0;
   break;
  case 129:
   arr_type = 8;
   break;
  case 128:
   arr_type = 25;
   break;
  default:
   arr_type = 9;
   break;
  }
 }

 prepare_set();

 base <<= PAGE_SHIFT;
 setCx86(arr + 0, ((unsigned char *)&base)[3]);
 setCx86(arr + 1, ((unsigned char *)&base)[2]);
 setCx86(arr + 2, (((unsigned char *)&base)[1]) | arr_size);
 setCx86(CX86_RCR_BASE + reg, arr_type);

 post_set();
}
