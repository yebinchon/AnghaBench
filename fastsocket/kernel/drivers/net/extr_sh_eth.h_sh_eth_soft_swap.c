
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int swab32 (int ) ;

__attribute__((used)) static inline void sh_eth_soft_swap(char *src, int len)
{

 u32 *p = (u32 *)src;
 u32 *maxp;
 maxp = p + ((len + sizeof(u32) - 1) / sizeof(u32));

 for (; p < maxp; p++)
  *p = swab32(*p);

}
