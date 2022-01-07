
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_packet {scalar_t__ generation; int ack; int (* callback ) (struct fw_packet*,int *,int ) ;int * header; } ;
struct context {TYPE_1__* ohci; } ;
struct TYPE_2__ {scalar_t__ node_id; scalar_t__ generation; int card; int lock; } ;


 scalar_t__ HEADER_GET_DESTINATION (int ) ;
 int at_context_queue_packet (struct context*,struct fw_packet*) ;
 int handle_local_request (struct context*,struct fw_packet*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fw_packet*,int *,int ) ;

__attribute__((used)) static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ctx->ohci->lock, flags);

 if (HEADER_GET_DESTINATION(packet->header[0]) == ctx->ohci->node_id &&
     ctx->ohci->generation == packet->generation) {
  spin_unlock_irqrestore(&ctx->ohci->lock, flags);
  handle_local_request(ctx, packet);
  return;
 }

 ret = at_context_queue_packet(ctx, packet);
 spin_unlock_irqrestore(&ctx->ohci->lock, flags);

 if (ret < 0)
  packet->callback(packet, &ctx->ohci->card, packet->ack);

}
