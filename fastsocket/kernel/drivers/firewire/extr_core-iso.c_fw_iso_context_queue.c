
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_iso_packet {int dummy; } ;
struct fw_iso_context {struct fw_card* card; } ;
struct fw_iso_buffer {int dummy; } ;
struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* queue_iso ) (struct fw_iso_context*,struct fw_iso_packet*,struct fw_iso_buffer*,unsigned long) ;} ;


 int stub1 (struct fw_iso_context*,struct fw_iso_packet*,struct fw_iso_buffer*,unsigned long) ;

int fw_iso_context_queue(struct fw_iso_context *ctx,
    struct fw_iso_packet *packet,
    struct fw_iso_buffer *buffer,
    unsigned long payload)
{
 struct fw_card *card = ctx->card;

 return card->driver->queue_iso(ctx, packet, buffer, payload);
}
