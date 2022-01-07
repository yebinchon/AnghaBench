
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int generation; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;


 int ALL_NODES ;
 int EINVAL ;
 int ENOMEM ;
 int HPSB_DEBUG (char*,int,int) ;
 int PHYPACKET_GAPCOUNT_SHIFT ;
 int PHYPACKET_PHYCONFIG_R ;
 int PHYPACKET_PHYCONFIG_T ;
 int PHYPACKET_PORT_SHIFT ;
 int get_hpsb_generation (struct hpsb_host*) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 struct hpsb_packet* hpsb_make_phypacket (struct hpsb_host*,int) ;
 int hpsb_send_packet_and_wait (struct hpsb_packet*) ;

int hpsb_send_phy_config(struct hpsb_host *host, int rootid, int gapcnt)
{
 struct hpsb_packet *packet;
 quadlet_t d = 0;
 int retval = 0;

 if (rootid >= ALL_NODES || rootid < -1 || gapcnt > 0x3f || gapcnt < -1 ||
    (rootid == -1 && gapcnt == -1)) {
  HPSB_DEBUG("Invalid Parameter: rootid = %d   gapcnt = %d",
      rootid, gapcnt);
  return -EINVAL;
 }

 if (rootid != -1)
  d |= PHYPACKET_PHYCONFIG_R | rootid << PHYPACKET_PORT_SHIFT;
 if (gapcnt != -1)
  d |= PHYPACKET_PHYCONFIG_T | gapcnt << PHYPACKET_GAPCOUNT_SHIFT;

 packet = hpsb_make_phypacket(host, d);
 if (!packet)
  return -ENOMEM;

 packet->generation = get_hpsb_generation(host);
 retval = hpsb_send_packet_and_wait(packet);
 hpsb_free_packet(packet);

 return retval;
}
