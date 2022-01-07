
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;
struct TYPE_9__ {int rx_desc_count; } ;
struct TYPE_6__ {int nwid; } ;
struct TYPE_7__ {TYPE_1__ discard; } ;
struct atmel_private {int rx_desc_head; TYPE_4__ host_info; TYPE_5__* dev; int * rx_buf; void* do_rx_crc; int frag_source; int wep_is_on; scalar_t__ probe_crc; int crc_ko_cnt; int crc_ok_cnt; TYPE_2__ wstats; } ;
struct TYPE_8__ {int rx_crc_errors; int rx_errors; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;


 int IEEE80211_FCTL_FTYPE ;
 int IEEE80211_FCTL_MOREFRAGS ;
 int IEEE80211_FCTL_PROTECTED ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_SCTL_FRAG ;
 int IEEE80211_SCTL_SEQ ;
 int RX_DESC_FLAGS_OFFSET ;
 int RX_DESC_FLAG_CONSUMED ;
 scalar_t__ RX_DESC_FLAG_VALID ;
 int RX_DESC_MSDU_POS_OFFSET ;
 int RX_DESC_MSDU_SIZE_OFFSET ;
 int RX_DESC_RSSI_OFFSET ;
 int RX_DESC_STATUS_OFFSET ;
 int RX_STATUS_SUCCESS ;
 int atmel_copy_to_host (TYPE_5__*,...) ;
 int atmel_management_frame (struct atmel_private*,struct ieee80211_hdr*,int,scalar_t__) ;
 int atmel_rmem16 (struct atmel_private*,int ) ;
 scalar_t__ atmel_rmem8 (struct atmel_private*,int ) ;
 int atmel_rx (struct atmel_private*,int ,int) ;
 int atmel_wmem8 (struct atmel_private*,int ,int ) ;
 int crc32_le (int,unsigned char*,int) ;
 int fast_rx_path (struct atmel_private*,struct ieee80211_hdr*,int,int,int) ;
 int frag_rx_path (struct atmel_private*,struct ieee80211_hdr*,int,int,int,int,int,int) ;
 int le16_to_cpu (int ) ;
 int memset (int ,int,int) ;
 void* probe_crc (struct atmel_private*,int,int) ;

__attribute__((used)) static void rx_done_irq(struct atmel_private *priv)
{
 int i;
 struct ieee80211_hdr header;

 for (i = 0;
      atmel_rmem8(priv, atmel_rx(priv, RX_DESC_FLAGS_OFFSET, priv->rx_desc_head)) == RX_DESC_FLAG_VALID &&
       i < priv->host_info.rx_desc_count;
      i++) {

  u16 msdu_size, rx_packet_loc, frame_ctl, seq_control;
  u8 status = atmel_rmem8(priv, atmel_rx(priv, RX_DESC_STATUS_OFFSET, priv->rx_desc_head));
  u32 crc = 0xffffffff;

  if (status != RX_STATUS_SUCCESS) {
   if (status == 0xc1)
    priv->wstats.discard.nwid++;
   else
    priv->dev->stats.rx_errors++;
   goto next;
  }

  msdu_size = atmel_rmem16(priv, atmel_rx(priv, RX_DESC_MSDU_SIZE_OFFSET, priv->rx_desc_head));
  rx_packet_loc = atmel_rmem16(priv, atmel_rx(priv, RX_DESC_MSDU_POS_OFFSET, priv->rx_desc_head));

  if (msdu_size < 30) {
   priv->dev->stats.rx_errors++;
   goto next;
  }


  atmel_copy_to_host(priv->dev, (char *)&header, rx_packet_loc, 24);
  frame_ctl = le16_to_cpu(header.frame_control);
  seq_control = le16_to_cpu(header.seq_ctrl);




  if (priv->probe_crc) {
   if (!priv->wep_is_on || !(frame_ctl & IEEE80211_FCTL_PROTECTED)) {
    priv->do_rx_crc = probe_crc(priv, rx_packet_loc, msdu_size);
   } else {
    priv->do_rx_crc = probe_crc(priv, rx_packet_loc + 24, msdu_size - 24);
   }
   if (priv->do_rx_crc) {
    if (priv->crc_ok_cnt++ > 5)
     priv->probe_crc = 0;
   } else {
    if (priv->crc_ko_cnt++ > 5)
     priv->probe_crc = 0;
   }
  }


  if (priv->do_rx_crc && (!priv->wep_is_on || !(frame_ctl & IEEE80211_FCTL_PROTECTED))) {
   crc = crc32_le(0xffffffff, (unsigned char *)&header, 24);
  }
  msdu_size -= 24;

  if ((frame_ctl & IEEE80211_FCTL_FTYPE) == IEEE80211_FTYPE_DATA) {
   int more_fragments = frame_ctl & IEEE80211_FCTL_MOREFRAGS;
   u8 packet_fragment_no = seq_control & IEEE80211_SCTL_FRAG;
   u16 packet_sequence_no = (seq_control & IEEE80211_SCTL_SEQ) >> 4;

   if (!more_fragments && packet_fragment_no == 0) {
    fast_rx_path(priv, &header, msdu_size, rx_packet_loc, crc);
   } else {
    frag_rx_path(priv, &header, msdu_size, rx_packet_loc, crc,
          packet_sequence_no, packet_fragment_no, more_fragments);
   }
  }

  if ((frame_ctl & IEEE80211_FCTL_FTYPE) == IEEE80211_FTYPE_MGMT) {

   atmel_copy_to_host(priv->dev, (unsigned char *)&priv->rx_buf, rx_packet_loc + 24, msdu_size);


   memset(priv->frag_source, 0xff, 6);

   if (priv->do_rx_crc) {

    msdu_size -= 4;
    crc = crc32_le(crc, (unsigned char *)&priv->rx_buf, msdu_size);
    if ((crc ^ 0xffffffff) != (*((u32 *)&priv->rx_buf[msdu_size]))) {
     priv->dev->stats.rx_crc_errors++;
     goto next;
    }
   }

   atmel_management_frame(priv, &header, msdu_size,
            atmel_rmem8(priv, atmel_rx(priv, RX_DESC_RSSI_OFFSET, priv->rx_desc_head)));
  }

next:

  atmel_wmem8(priv, atmel_rx(priv, RX_DESC_FLAGS_OFFSET, priv->rx_desc_head), RX_DESC_FLAG_CONSUMED);

  if (priv->rx_desc_head < (priv->host_info.rx_desc_count - 1))
   priv->rx_desc_head++;
  else
   priv->rx_desc_head = 0;
 }
}
