
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_packet {int payload_length; int interrupt; int header_length; scalar_t__ skip; } ;
struct firedtv_receive_context {int interrupt_packet; int buffer; int context; } ;


 int IRQ_INTERVAL ;
 int ISO_HEADER_SIZE ;
 int MAX_PACKET_SIZE ;
 int fw_iso_context_queue (int ,struct fw_iso_packet*,int *,int) ;

__attribute__((used)) static int queue_iso(struct firedtv_receive_context *ctx, int index)
{
 struct fw_iso_packet p;

 p.payload_length = MAX_PACKET_SIZE;
 p.interrupt = !(++ctx->interrupt_packet & (IRQ_INTERVAL - 1));
 p.skip = 0;
 p.header_length = ISO_HEADER_SIZE;

 return fw_iso_context_queue(ctx->context, &p, &ctx->buffer,
        index * MAX_PACKET_SIZE);
}
