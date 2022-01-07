
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct fw_packet {unsigned long long* header; int ack; int (* callback ) (struct fw_packet*,int *,int ) ;} ;
struct context {TYPE_1__* ohci; } ;
struct TYPE_3__ {int card; struct context at_response_ctx; struct context at_request_ctx; } ;


 int ACK_COMPLETE ;
 int ACK_PENDING ;




 int CSR_CONFIG_ROM ;
 int CSR_CONFIG_ROM_END ;
 int CSR_REGISTER_BASE ;
 scalar_t__ HEADER_GET_OFFSET_HIGH (unsigned long long) ;
 int fw_core_handle_request (int *,struct fw_packet*) ;
 int fw_core_handle_response (int *,struct fw_packet*) ;
 int handle_local_lock (TYPE_1__*,struct fw_packet*,int) ;
 int handle_local_rom (TYPE_1__*,struct fw_packet*,int) ;
 int stub1 (struct fw_packet*,int *,int ) ;
 int stub2 (struct fw_packet*,int *,int ) ;

__attribute__((used)) static void handle_local_request(struct context *ctx, struct fw_packet *packet)
{
 u64 offset;
 u32 csr;

 if (ctx == &ctx->ohci->at_request_ctx) {
  packet->ack = ACK_PENDING;
  packet->callback(packet, &ctx->ohci->card, packet->ack);
 }

 offset =
  ((unsigned long long)
   HEADER_GET_OFFSET_HIGH(packet->header[1]) << 32) |
  packet->header[2];
 csr = offset - CSR_REGISTER_BASE;


 if (csr >= CSR_CONFIG_ROM && csr < CSR_CONFIG_ROM_END)
  handle_local_rom(ctx->ohci, packet, csr);
 else switch (csr) {
 case 130:
 case 131:
 case 129:
 case 128:
  handle_local_lock(ctx->ohci, packet, csr);
  break;
 default:
  if (ctx == &ctx->ohci->at_request_ctx)
   fw_core_handle_request(&ctx->ohci->card, packet);
  else
   fw_core_handle_response(&ctx->ohci->card, packet);
  break;
 }

 if (ctx == &ctx->ohci->at_response_ctx) {
  packet->ack = ACK_COMPLETE;
  packet->callback(packet, &ctx->ohci->card, packet->ack);
 }
}
