
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ks_net {scalar_t__ enabled; int mac_addr; } ;


 int KS_MARH ;
 int KS_MARL ;
 int KS_MARM ;
 int ks_start_rx (struct ks_net*) ;
 int ks_stop_rx (struct ks_net*) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void ks_set_mac(struct ks_net *ks, u8 *data)
{
 u16 *pw = (u16 *)data;
 u16 w, u;

 ks_stop_rx(ks);

 u = *pw++;
 w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
 ks_wrreg16(ks, KS_MARH, w);

 u = *pw++;
 w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
 ks_wrreg16(ks, KS_MARM, w);

 u = *pw;
 w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
 ks_wrreg16(ks, KS_MARL, w);

 memcpy(ks->mac_addr, data, 6);

 if (ks->enabled)
  ks_start_rx(ks);
}
