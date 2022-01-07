
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int protocol; unsigned int address; int packet_rank; } ;
union nl_packet {unsigned char* rawpkt; TYPE_1__ hdr; } ;
struct ipw_hardware {int dummy; } ;


 int NL_FIRST_PACKET ;
 unsigned int NL_FIRST_PACKET_HEADER_SIZE ;
 unsigned int NL_FOLLOWING_PACKET_HEADER_SIZE ;
 int NL_LAST_PACKET ;



 int handle_received_SETUP_packet (struct ipw_hardware*,unsigned int,unsigned char const*,unsigned int,int) ;
 int queue_received_packet (struct ipw_hardware*,unsigned int,unsigned int,unsigned char const*,unsigned int,int) ;

__attribute__((used)) static void handle_received_packet(struct ipw_hardware *hw,
       const union nl_packet *packet,
       unsigned short len)
{
 unsigned int protocol = packet->hdr.protocol;
 unsigned int address = packet->hdr.address;
 unsigned int header_length;
 const unsigned char *data;
 unsigned int data_len;
 int is_last = packet->hdr.packet_rank & NL_LAST_PACKET;

 if (packet->hdr.packet_rank & NL_FIRST_PACKET)
  header_length = NL_FIRST_PACKET_HEADER_SIZE;
 else
  header_length = NL_FOLLOWING_PACKET_HEADER_SIZE;

 data = packet->rawpkt + header_length;
 data_len = len - header_length;
 switch (protocol) {
 case 129:
 case 130:
  queue_received_packet(hw, protocol, address, data, data_len,
    is_last);
  break;
 case 128:
  handle_received_SETUP_packet(hw, address, data, data_len,
    is_last);
  break;
 }
}
