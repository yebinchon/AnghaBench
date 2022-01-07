
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ ssize_t ;


 int swab32 (int ) ;

__attribute__((used)) static inline void sci_swab32_cpy(void *_dest, void *_src, ssize_t word_cnt)
{
 u32 *dest = _dest, *src = _src;

 while (--word_cnt >= 0)
  dest[word_cnt] = swab32(src[word_cnt]);
}
