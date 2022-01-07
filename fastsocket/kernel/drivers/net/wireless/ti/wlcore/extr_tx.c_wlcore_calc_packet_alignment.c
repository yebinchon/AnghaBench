
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int quirks; } ;


 unsigned int ALIGN (unsigned int,int ) ;
 int WL1271_TX_ALIGN_TO ;
 int WL12XX_BUS_BLOCK_SIZE ;
 int WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ;
 int WLCORE_QUIRK_TX_PAD_LAST_FRAME ;

unsigned int wlcore_calc_packet_alignment(struct wl1271 *wl,
       unsigned int packet_length)
{
 if ((wl->quirks & WLCORE_QUIRK_TX_PAD_LAST_FRAME) ||
     !(wl->quirks & WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN))
  return ALIGN(packet_length, WL1271_TX_ALIGN_TO);
 else
  return ALIGN(packet_length, WL12XX_BUS_BLOCK_SIZE);
}
