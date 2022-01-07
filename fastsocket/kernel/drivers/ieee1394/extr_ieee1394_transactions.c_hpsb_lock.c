
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {unsigned int generation; int * data; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;
typedef int nodeid_t ;


 int ENOMEM ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 int hpsb_free_tlabel (struct hpsb_packet*) ;
 struct hpsb_packet* hpsb_make_lockpacket (struct hpsb_host*,int ,int ,int,int *,int ) ;
 int hpsb_packet_success (struct hpsb_packet*) ;
 int hpsb_send_packet_and_wait (struct hpsb_packet*) ;

int hpsb_lock(struct hpsb_host *host, nodeid_t node, unsigned int generation,
       u64 addr, int extcode, quadlet_t *data, quadlet_t arg)
{
 struct hpsb_packet *packet;
 int retval = 0;

 packet = hpsb_make_lockpacket(host, node, addr, extcode, data, arg);
 if (!packet)
  return -ENOMEM;

 packet->generation = generation;
 retval = hpsb_send_packet_and_wait(packet);
 if (retval < 0)
  goto hpsb_lock_fail;

 retval = hpsb_packet_success(packet);

 if (retval == 0)
  *data = packet->data[0];

hpsb_lock_fail:
 hpsb_free_tlabel(packet);
 hpsb_free_packet(packet);

 return retval;
}
