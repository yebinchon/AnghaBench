
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ks_net {scalar_t__* mcast_bits; } ;


 size_t HW_MCAST_SIZE ;
 scalar_t__ KS_MAHTR0 ;
 int ks_wrreg16 (struct ks_net*,scalar_t__,int ) ;

__attribute__((used)) static void ks_clear_mcast(struct ks_net *ks)
{
 u16 i, mcast_size;
 for (i = 0; i < HW_MCAST_SIZE; i++)
  ks->mcast_bits[i] = 0;

 mcast_size = HW_MCAST_SIZE >> 2;
 for (i = 0; i < mcast_size; i++)
  ks_wrreg16(ks, KS_MAHTR0 + (2*i), 0);
}
