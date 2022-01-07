
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int edmac_endian; } ;
typedef int __u32 ;




 int be32_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline __u32 edmac_to_cpu(struct sh_eth_private *mdp, u32 x)
{
 switch (mdp->edmac_endian) {
 case 128:
  return le32_to_cpu(x);
 case 129:
  return be32_to_cpu(x);
 }
 return x;
}
