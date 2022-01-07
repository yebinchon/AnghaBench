
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_usb {int dummy; } ;
struct rx_length_info {int * length; int tag; } ;


 unsigned int RX_LENGTH_INFO_TAG ;
 int dev_dbg_f (int ,char*,unsigned int) ;
 unsigned int get_unaligned_le16 (int *) ;
 int zd_mac_rx (int ,int const*,unsigned int) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_usb_to_hw (struct zd_usb*) ;

__attribute__((used)) static void handle_rx_packet(struct zd_usb *usb, const u8 *buffer,
        unsigned int length)
{
 int i;
 const struct rx_length_info *length_info;

 if (length < sizeof(struct rx_length_info)) {

  dev_dbg_f(zd_usb_dev(usb), "invalid, small RX packet : %d\n",
        length);
  return;
 }
 length_info = (struct rx_length_info *)
  (buffer + length - sizeof(struct rx_length_info));
 if (get_unaligned_le16(&length_info->tag) == RX_LENGTH_INFO_TAG)
 {
  unsigned int l, k, n;
  for (i = 0, l = 0;; i++) {
   k = get_unaligned_le16(&length_info->length[i]);
   if (k == 0)
    return;
   n = l+k;
   if (n > length)
    return;
   zd_mac_rx(zd_usb_to_hw(usb), buffer+l, k);
   if (i >= 2)
    return;
   l = (n+3) & ~3;
  }
 } else {
  zd_mac_rx(zd_usb_to_hw(usb), buffer, length);
 }
}
