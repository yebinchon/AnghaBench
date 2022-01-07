
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int _get_byte (void**) ;
 unsigned int _get_word (void**) ;

__attribute__((used)) static inline u32 _get_slice(void **pp, unsigned char *dp)
{
 unsigned int len, i;

 len = i = _get_word(pp);
 while (i-- > 0) *dp++ = _get_byte(pp);
 return len;
}
