
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int no_waiter; int generation; } ;
struct hpsb_host {int id; int node_id; } ;


 int ENOMEM ;
 int EXTPHYPACKET_TYPE_RESUME ;
 int HPSB_WARN (char*,int ) ;
 int NODEID_TO_NODE (int ) ;
 int PHYPACKET_PORT_SHIFT ;
 int get_hpsb_generation (struct hpsb_host*) ;
 struct hpsb_packet* hpsb_make_phypacket (struct hpsb_host*,int) ;
 int hpsb_send_packet (struct hpsb_packet*) ;

__attribute__((used)) static int nodemgr_send_resume_packet(struct hpsb_host *host)
{
 struct hpsb_packet *packet;
 int error = -ENOMEM;

 packet = hpsb_make_phypacket(host,
   EXTPHYPACKET_TYPE_RESUME |
   NODEID_TO_NODE(host->node_id) << PHYPACKET_PORT_SHIFT);
 if (packet) {
  packet->no_waiter = 1;
  packet->generation = get_hpsb_generation(host);
  error = hpsb_send_packet(packet);
 }
 if (error)
  HPSB_WARN("fw-host%d: Failed to broadcast resume packet",
     host->id);
 return error;
}
