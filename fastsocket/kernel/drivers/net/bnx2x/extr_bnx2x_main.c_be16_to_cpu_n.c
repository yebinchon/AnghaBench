
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int __be16 ;


 int be16_to_cpu (int const) ;

__attribute__((used)) static void be16_to_cpu_n(const u8 *_source, u8 *_target, u32 n)
{
 const __be16 *source = (const __be16 *)_source;
 u16 *target = (u16 *)_target;
 u32 i;

 for (i = 0; i < n/2; i++)
  target[i] = be16_to_cpu(source[i]);
}
