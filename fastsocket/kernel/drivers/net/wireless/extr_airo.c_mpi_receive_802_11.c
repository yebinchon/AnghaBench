
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int ip_summed; int protocol; int * dev; int pkt_type; } ;
struct rx_hdr {size_t* rssi; scalar_t__ len; scalar_t__ status; } ;
struct iw_quality {size_t qual; int level; int updated; int noise; } ;
struct TYPE_14__ {int noise; } ;
struct TYPE_15__ {TYPE_4__ qual; } ;
struct TYPE_12__ {scalar_t__ spy_number; } ;
struct airo_info {TYPE_6__* rxfids; int * wifidev; TYPE_8__* dev; TYPE_5__ wstats; TYPE_3__* rssi; TYPE_2__ spy_data; } ;
typedef int rxd ;
typedef int hdr ;
typedef int __le16 ;
struct TYPE_11__ {int rx_dropped; } ;
struct TYPE_18__ {int name; TYPE_1__ stats; } ;
struct TYPE_17__ {int valid; int len; scalar_t__ rdy; } ;
struct TYPE_16__ {char* virtual_host_addr; int card_ram_off; } ;
struct TYPE_13__ {int rssidBm; } ;
typedef TYPE_7__ RxFid ;


 int AIRO_DEF_MTU ;
 int CHECKSUM_NONE ;
 int ETH_P_802_2 ;
 int IW_QUAL_DBM ;
 int IW_QUAL_LEVEL_UPDATED ;
 int IW_QUAL_QUAL_UPDATED ;
 int PACKET_OTHERHOST ;
 int PKTSIZE ;
 int airo_print_err (int ,char*,...) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int get_unaligned (int *) ;
 int get_unaligned_le16 (char*) ;
 int header_len (int ) ;
 int htons (int ) ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (char*,char*,int) ;
 int memcpy_fromio (TYPE_7__*,int ,int) ;
 int memcpy_toio (int ,TYPE_7__*,int) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int wireless_spy_update (TYPE_8__*,char*,struct iw_quality*) ;

__attribute__((used)) static void mpi_receive_802_11(struct airo_info *ai)
{
 RxFid rxd;
 struct sk_buff *skb = ((void*)0);
 u16 len, hdrlen = 0;
 __le16 fc;
 struct rx_hdr hdr;
 u16 gap;
 u16 *buffer;
 char *ptr = ai->rxfids[0].virtual_host_addr + 4;

 memcpy_fromio(&rxd, ai->rxfids[0].card_ram_off, sizeof(rxd));
 memcpy ((char *)&hdr, ptr, sizeof(hdr));
 ptr += sizeof(hdr);

 if (le16_to_cpu(hdr.status) & 2)
  hdr.len = 0;
 if (ai->wifidev == ((void*)0))
  hdr.len = 0;
 len = le16_to_cpu(hdr.len);
 if (len > AIRO_DEF_MTU) {
  airo_print_err(ai->dev->name, "Bad size %d", len);
  goto badrx;
 }
 if (len == 0)
  goto badrx;

 fc = get_unaligned((__le16 *)ptr);
 hdrlen = header_len(fc);

 skb = dev_alloc_skb( len + hdrlen + 2 );
 if ( !skb ) {
  ai->dev->stats.rx_dropped++;
  goto badrx;
 }
 buffer = (u16*)skb_put (skb, len + hdrlen);
 memcpy ((char *)buffer, ptr, hdrlen);
 ptr += hdrlen;
 if (hdrlen == 24)
  ptr += 6;
 gap = get_unaligned_le16(ptr);
 ptr += sizeof(__le16);
 if (gap) {
  if (gap <= 8)
   ptr += gap;
  else
   airo_print_err(ai->dev->name,
       "gaplen too big. Problems will follow...");
 }
 memcpy ((char *)buffer + hdrlen, ptr, len);
 ptr += len;
 skb_reset_mac_header(skb);
 skb->pkt_type = PACKET_OTHERHOST;
 skb->dev = ai->wifidev;
 skb->protocol = htons(ETH_P_802_2);
 skb->ip_summed = CHECKSUM_NONE;
 netif_rx( skb );

badrx:
 if (rxd.valid == 0) {
  rxd.valid = 1;
  rxd.rdy = 0;
  rxd.len = PKTSIZE;
  memcpy_toio(ai->rxfids[0].card_ram_off, &rxd, sizeof(rxd));
 }
}
