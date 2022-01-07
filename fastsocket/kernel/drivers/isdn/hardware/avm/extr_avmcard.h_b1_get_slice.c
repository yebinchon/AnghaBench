
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b1_get_byte (unsigned int) ;
 unsigned int b1_get_word (unsigned int) ;

__attribute__((used)) static inline unsigned int b1_get_slice(unsigned int base,
     unsigned char *dp)
{
 unsigned int len, i;

 len = i = b1_get_word(base);
 while (i-- > 0) *dp++ = b1_get_byte(base);
 return len;
}
