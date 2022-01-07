
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int L2T_HASH_MASK ;
 unsigned int jhash_2words (int const,int,int ) ;

__attribute__((used)) static inline unsigned int arp_hash(const u32 *key, int ifindex)
{
 return jhash_2words(*key, ifindex, 0) & L2T_HASH_MASK;
}
