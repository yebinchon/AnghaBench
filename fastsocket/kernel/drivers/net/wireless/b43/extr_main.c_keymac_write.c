
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_NR_GROUP_KEYS ;
 int B43_NR_PAIRWISE_KEYS ;
 int B43_SHM_RCMTA ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_new_kidx_api (struct b43_wldev*) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int) ;
 int b43_shm_write32 (struct b43_wldev*,int ,scalar_t__,int) ;

__attribute__((used)) static void keymac_write(struct b43_wldev *dev, u8 index, const u8 *addr)
{
 u32 addrtmp[2] = { 0, 0, };
 u8 pairwise_keys_start = B43_NR_GROUP_KEYS * 2;

 if (b43_new_kidx_api(dev))
  pairwise_keys_start = B43_NR_GROUP_KEYS;

 B43_WARN_ON(index < pairwise_keys_start);





 index -= pairwise_keys_start;
 B43_WARN_ON(index >= B43_NR_PAIRWISE_KEYS);

 if (addr) {
  addrtmp[0] = addr[0];
  addrtmp[0] |= ((u32) (addr[1]) << 8);
  addrtmp[0] |= ((u32) (addr[2]) << 16);
  addrtmp[0] |= ((u32) (addr[3]) << 24);
  addrtmp[1] = addr[4];
  addrtmp[1] |= ((u32) (addr[5]) << 8);
 }


 b43_shm_write32(dev, B43_SHM_RCMTA,
   (index * 2) + 0, addrtmp[0]);
 b43_shm_write16(dev, B43_SHM_RCMTA,
   (index * 2) + 1, addrtmp[1]);
}
