
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43legacy_plcp_hdr6 {int* raw; } ;


 int B43legacy_BUG_ON (int) ;

__attribute__((used)) static u8 b43legacy_plcp_get_bitrate_idx_cck(struct b43legacy_plcp_hdr6 *plcp)
{
 switch (plcp->raw[0]) {
 case 0x0A:
  return 0;
 case 0x14:
  return 1;
 case 0x37:
  return 2;
 case 0x6E:
  return 3;
 }
 B43legacy_BUG_ON(1);
 return -1;
}
