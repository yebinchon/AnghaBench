
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct node_entry {int nodeid; int host; } ;
struct hpsb_packet {int dummy; } ;
typedef int quadlet_t ;


 int EIO ;
 int ENOMEM ;
 struct hpsb_packet* hpsb_make_writepacket (int ,int ,int ,int *,size_t) ;
 int hpsb_node_fill_packet (struct node_entry*,struct hpsb_packet*) ;
 scalar_t__ hpsb_send_packet (struct hpsb_packet*) ;
 int hpsb_set_packet_complete_task (struct hpsb_packet*,int (*) (struct hpsb_packet*),struct hpsb_packet*) ;
 int sbp2_free_packet (struct hpsb_packet*) ;

__attribute__((used)) static int sbp2util_node_write_no_wait(struct node_entry *ne, u64 addr,
           quadlet_t *buf, size_t len)
{
 struct hpsb_packet *packet;

 packet = hpsb_make_writepacket(ne->host, ne->nodeid, addr, buf, len);
 if (!packet)
  return -ENOMEM;

 hpsb_set_packet_complete_task(packet, sbp2_free_packet, packet);
 hpsb_node_fill_packet(ne, packet);
 if (hpsb_send_packet(packet) < 0) {
  sbp2_free_packet(packet);
  return -EIO;
 }
 return 0;
}
