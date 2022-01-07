
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_task {scalar_t__ outstanding_pkts; int hdr; int max_payload; int skb; struct hpsb_packet* packet; } ;
struct hpsb_packet {scalar_t__ tcode; } ;


 int EAGAIN ;
 int ETH1394_PRINT_G (int ,char*) ;
 int KERN_ERR ;
 scalar_t__ TCODE_STREAM_DATA ;
 int ether1394_dg_complete (struct packet_task*,int) ;
 int ether1394_encapsulate (int ,int ,int *) ;
 int ether1394_free_packet (struct hpsb_packet*) ;
 int ether1394_send_packet (struct packet_task*,int) ;
 int hpsb_packet_success (struct hpsb_packet*) ;

__attribute__((used)) static void ether1394_complete_cb(void *__ptask)
{
 struct packet_task *ptask = (struct packet_task *)__ptask;
 struct hpsb_packet *packet = ptask->packet;
 int fail = 0;

 if (packet->tcode != TCODE_STREAM_DATA)
  fail = hpsb_packet_success(packet);

 ether1394_free_packet(packet);

 ptask->outstanding_pkts--;
 if (ptask->outstanding_pkts > 0 && !fail) {
  int tx_len, err;


  tx_len = ether1394_encapsulate(ptask->skb, ptask->max_payload,
            &ptask->hdr);
  err = ether1394_send_packet(ptask, tx_len);
  if (err) {
   if (err == -EAGAIN)
    ETH1394_PRINT_G(KERN_ERR, "Out of tlabels\n");

   ether1394_dg_complete(ptask, 1);
  }
 } else {
  ether1394_dg_complete(ptask, fail);
 }
}
