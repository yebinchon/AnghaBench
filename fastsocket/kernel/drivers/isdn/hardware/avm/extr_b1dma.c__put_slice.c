
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _put_byte (void**,int ) ;
 int _put_word (void**,unsigned int) ;

__attribute__((used)) static inline void _put_slice(void **pp, unsigned char *dp, unsigned int len)
{
 unsigned i = len;
 _put_word(pp, i);
 while (i-- > 0)
  _put_byte(pp, *dp++);
}
