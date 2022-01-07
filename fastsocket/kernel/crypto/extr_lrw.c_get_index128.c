
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int be128 ;
typedef int __be32 ;


 int be32_to_cpup (int *) ;
 int ffz (int ) ;

__attribute__((used)) static inline int get_index128(be128 *block)
{
 int x;
 __be32 *p = (__be32 *) block;

 for (p += 3, x = 0; x < 128; p--, x += 32) {
  u32 val = be32_to_cpup(p);

  if (!~val)
   continue;

  return x + ffz(val);
 }

 return x;
}
