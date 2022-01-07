
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {unsigned int generation; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;
typedef int nodeid_t ;


 int EINVAL ;
 int ENOMEM ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 int hpsb_free_tlabel (struct hpsb_packet*) ;
 struct hpsb_packet* hpsb_make_writepacket (struct hpsb_host*,int ,int ,int *,size_t) ;
 int hpsb_packet_success (struct hpsb_packet*) ;
 int hpsb_send_packet_and_wait (struct hpsb_packet*) ;

int hpsb_write(struct hpsb_host *host, nodeid_t node, unsigned int generation,
        u64 addr, quadlet_t * buffer, size_t length)
{
 struct hpsb_packet *packet;
 int retval;

 if (length == 0)
  return -EINVAL;

 packet = hpsb_make_writepacket(host, node, addr, buffer, length);

 if (!packet)
  return -ENOMEM;

 packet->generation = generation;
 retval = hpsb_send_packet_and_wait(packet);
 if (retval < 0)
  goto hpsb_write_fail;

 retval = hpsb_packet_success(packet);

      hpsb_write_fail:
 hpsb_free_tlabel(packet);
 hpsb_free_packet(packet);

 return retval;
}
