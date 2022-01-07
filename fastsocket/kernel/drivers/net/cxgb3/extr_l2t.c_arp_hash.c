
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2t_data {int nentries; } ;


 int jhash_2words (int ,int,int ) ;

__attribute__((used)) static inline unsigned int arp_hash(u32 key, int ifindex,
        const struct l2t_data *d)
{
 return jhash_2words(key, ifindex, 0) & (d->nentries - 1);
}
