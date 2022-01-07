
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pt1_buffer_page {int * upackets; } ;
struct pt1_adapter {int upacket_count; int* buf; int packet_count; int demux; } ;
struct pt1 {struct pt1_adapter** adaps; } ;


 int PT1_NR_ADAPS ;
 int PT1_NR_UPACKETS ;
 int dvb_dmx_swfilter_packets (int *,int*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int pt1_filter(struct pt1 *pt1, struct pt1_buffer_page *page)
{
 u32 upacket;
 int i;
 int index;
 struct pt1_adapter *adap;
 int offset;
 u8 *buf;

 if (!page->upackets[PT1_NR_UPACKETS - 1])
  return 0;

 for (i = 0; i < PT1_NR_UPACKETS; i++) {
  upacket = le32_to_cpu(page->upackets[i]);
  index = (upacket >> 29) - 1;
  if (index < 0 || index >= PT1_NR_ADAPS)
   continue;

  adap = pt1->adaps[index];
  if (upacket >> 25 & 1)
   adap->upacket_count = 0;
  else if (!adap->upacket_count)
   continue;

  buf = adap->buf;
  offset = adap->packet_count * 188 + adap->upacket_count * 3;
  buf[offset] = upacket >> 16;
  buf[offset + 1] = upacket >> 8;
  if (adap->upacket_count != 62)
   buf[offset + 2] = upacket;

  if (++adap->upacket_count >= 63) {
   adap->upacket_count = 0;
   if (++adap->packet_count >= 21) {
    dvb_dmx_swfilter_packets(&adap->demux, buf, 21);
    adap->packet_count = 0;
   }
  }
 }

 page->upackets[PT1_NR_UPACKETS - 1] = 0;
 return 1;
}
