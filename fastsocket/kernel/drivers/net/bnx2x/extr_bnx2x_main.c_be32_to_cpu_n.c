
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;

__attribute__((used)) static void be32_to_cpu_n(const u8 *_source, u8 *_target, u32 n)
{
 const __be32 *source = (const __be32 *)_source;
 u32 *target = (u32 *)_target;
 u32 i;

 for (i = 0; i < n/4; i++)
  target[i] = be32_to_cpu(source[i]);
}
