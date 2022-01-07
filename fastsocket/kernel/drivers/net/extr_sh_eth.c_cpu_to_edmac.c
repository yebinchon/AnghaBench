
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int edmac_endian; } ;
typedef int __u32 ;




 int cpu_to_be32 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline __u32 cpu_to_edmac(struct sh_eth_private *mdp, u32 x)
{
 switch (mdp->edmac_endian) {
 case 128:
  return cpu_to_le32(x);
 case 129:
  return cpu_to_be32(x);
 }
 return x;
}
