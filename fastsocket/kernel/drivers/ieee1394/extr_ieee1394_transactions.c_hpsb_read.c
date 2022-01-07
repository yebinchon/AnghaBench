
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {unsigned int generation; int data; int * header; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;
typedef int nodeid_t ;


 int EINVAL ;
 int ENOMEM ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 int hpsb_free_tlabel (struct hpsb_packet*) ;
 struct hpsb_packet* hpsb_make_readpacket (struct hpsb_host*,int ,int ,size_t) ;
 int hpsb_packet_success (struct hpsb_packet*) ;
 int hpsb_send_packet_and_wait (struct hpsb_packet*) ;
 int memcpy (int *,int ,size_t) ;

int hpsb_read(struct hpsb_host *host, nodeid_t node, unsigned int generation,
       u64 addr, quadlet_t * buffer, size_t length)
{
 struct hpsb_packet *packet;
 int retval = 0;

 if (length == 0)
  return -EINVAL;

 packet = hpsb_make_readpacket(host, node, addr, length);

 if (!packet) {
  return -ENOMEM;
 }

 packet->generation = generation;
 retval = hpsb_send_packet_and_wait(packet);
 if (retval < 0)
  goto hpsb_read_fail;

 retval = hpsb_packet_success(packet);

 if (retval == 0) {
  if (length == 4) {
   *buffer = packet->header[3];
  } else {
   memcpy(buffer, packet->data, length);
  }
 }

      hpsb_read_fail:
 hpsb_free_tlabel(packet);
 hpsb_free_packet(packet);

 return retval;
}
