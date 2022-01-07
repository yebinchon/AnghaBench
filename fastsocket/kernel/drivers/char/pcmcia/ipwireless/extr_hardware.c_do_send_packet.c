
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char length_lsb; unsigned char length_msb; int packet_rank; int address; int protocol; } ;
union nl_packet {scalar_t__ rawpkt; TYPE_1__ hdr_first; } ;
struct ipw_tx_packet {int length; unsigned short offset; scalar_t__ fragment_count; int callback_data; int (* packet_callback ) (int ,int) ;int queue; int dest_addr; int protocol; } ;
struct ipw_hardware {unsigned short ll_mtu; int lock; int tx_queued; int * tx_queue; } ;


 int NL_FIRST_PACKET ;
 unsigned short NL_FIRST_PACKET_HEADER_SIZE ;
 unsigned short NL_FOLLOWING_PACKET_HEADER_SIZE ;
 int NL_LAST_PACKET ;
 int do_send_fragment (struct ipw_hardware*,scalar_t__,unsigned short) ;
 int kfree (struct ipw_tx_packet*) ;
 int list_add (int *,int *) ;
 int memcpy (scalar_t__,unsigned char*,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void do_send_packet(struct ipw_hardware *hw, struct ipw_tx_packet *packet)
{
 unsigned short fragment_data_len;
 unsigned short data_left = packet->length - packet->offset;
 unsigned short header_size;
 union nl_packet pkt;

 header_size =
     (packet->fragment_count == 0)
     ? NL_FIRST_PACKET_HEADER_SIZE
     : NL_FOLLOWING_PACKET_HEADER_SIZE;
 fragment_data_len = hw->ll_mtu - header_size;
 if (data_left < fragment_data_len)
  fragment_data_len = data_left;





 pkt.hdr_first.protocol = packet->protocol;
 pkt.hdr_first.address = packet->dest_addr;
 pkt.hdr_first.packet_rank = 0;


 if (packet->fragment_count == 0) {
  pkt.hdr_first.packet_rank |= NL_FIRST_PACKET;
  pkt.hdr_first.length_lsb = (unsigned char) packet->length;
  pkt.hdr_first.length_msb =
   (unsigned char) (packet->length >> 8);
 }

 memcpy(pkt.rawpkt + header_size,
        ((unsigned char *) packet) + sizeof(struct ipw_tx_packet) +
        packet->offset, fragment_data_len);
 packet->offset += fragment_data_len;
 packet->fragment_count++;


 if (packet->offset == packet->length)
  pkt.hdr_first.packet_rank |= NL_LAST_PACKET;
 do_send_fragment(hw, pkt.rawpkt, header_size + fragment_data_len);


 if (packet->offset < packet->length) {




  unsigned long flags;

  spin_lock_irqsave(&hw->lock, flags);
  list_add(&packet->queue, &hw->tx_queue[0]);
  hw->tx_queued++;
  spin_unlock_irqrestore(&hw->lock, flags);
 } else {
  if (packet->packet_callback)
   packet->packet_callback(packet->callback_data,
     packet->length);
  kfree(packet);
 }
}
