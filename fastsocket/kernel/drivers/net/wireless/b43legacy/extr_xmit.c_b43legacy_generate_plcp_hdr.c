
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43legacy_plcp_hdr4 {int* raw; int data; } ;
typedef int __u8 ;
typedef int __le32 ;


 int const B43legacy_CCK_RATE_11MB ;
 int B43legacy_WARN_ON (int const) ;
 scalar_t__ b43legacy_is_ofdm_rate (int const) ;
 int b43legacy_plcp_get_ratecode_cck (int const) ;
 int b43legacy_plcp_get_ratecode_ofdm (int const) ;
 int cpu_to_le32 (int) ;

void b43legacy_generate_plcp_hdr(struct b43legacy_plcp_hdr4 *plcp,
     const u16 octets, const u8 bitrate)
{
 __le32 *data = &(plcp->data);
 __u8 *raw = plcp->raw;

 if (b43legacy_is_ofdm_rate(bitrate)) {
  u16 d;

  d = b43legacy_plcp_get_ratecode_ofdm(bitrate);
  B43legacy_WARN_ON(octets & 0xF000);
  d |= (octets << 5);
  *data = cpu_to_le32(d);
 } else {
  u32 plen;

  plen = octets * 16 / bitrate;
  if ((octets * 16 % bitrate) > 0) {
   plen++;
   if ((bitrate == B43legacy_CCK_RATE_11MB)
       && ((octets * 8 % 11) < 4))
    raw[1] = 0x84;
   else
    raw[1] = 0x04;
  } else
   raw[1] = 0x04;
  *data |= cpu_to_le32(plen << 16);
  raw[0] = b43legacy_plcp_get_ratecode_cck(bitrate);
 }
}
