
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int tg3_nvram_read (struct tg3*,int ,int *) ;

__attribute__((used)) static int tg3_nvram_read_be32(struct tg3 *tp, u32 offset, __be32 *val)
{
 u32 v;
 int res = tg3_nvram_read(tp, offset, &v);
 if (!res)
  *val = cpu_to_be32(v);
 return res;
}
