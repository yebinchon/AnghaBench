
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int length; int data; } ;
struct fw_packet {scalar_t__ ack; unsigned long long* header; int speed; int generation; } ;
struct fw_card {int dummy; } ;
struct fw_address_handler {int callback_data; int (* address_callback ) (struct fw_card*,struct fw_request*,int,int,int,int ,int ,unsigned long long,int ,int ,int ) ;} ;


 scalar_t__ ACK_COMPLETE ;
 scalar_t__ ACK_PENDING ;
 int HEADER_GET_DESTINATION (unsigned long long) ;
 scalar_t__ HEADER_GET_OFFSET_HIGH (unsigned long long) ;
 int HEADER_GET_SOURCE (unsigned long long) ;
 int HEADER_GET_TCODE (unsigned long long) ;
 int RCODE_ADDRESS_ERROR ;
 int address_handler_list ;
 int address_handler_lock ;
 struct fw_request* allocate_request (struct fw_packet*) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 struct fw_address_handler* lookup_enclosing_address_handler (int *,unsigned long long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fw_card*,struct fw_request*,int,int,int,int ,int ,unsigned long long,int ,int ,int ) ;

void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
{
 struct fw_address_handler *handler;
 struct fw_request *request;
 unsigned long long offset;
 unsigned long flags;
 int tcode, destination, source;

 if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
  return;

 request = allocate_request(p);
 if (request == ((void*)0)) {

  return;
 }

 offset =
  ((unsigned long long)
   HEADER_GET_OFFSET_HIGH(p->header[1]) << 32) | p->header[2];
 tcode = HEADER_GET_TCODE(p->header[0]);
 destination = HEADER_GET_DESTINATION(p->header[0]);
 source = HEADER_GET_SOURCE(p->header[1]);

 spin_lock_irqsave(&address_handler_lock, flags);
 handler = lookup_enclosing_address_handler(&address_handler_list,
         offset, request->length);
 spin_unlock_irqrestore(&address_handler_lock, flags);
 if (handler == ((void*)0))
  fw_send_response(card, request, RCODE_ADDRESS_ERROR);
 else
  handler->address_callback(card, request,
       tcode, destination, source,
       p->generation, p->speed, offset,
       request->data, request->length,
       handler->callback_data);
}
