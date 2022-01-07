
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_request {scalar_t__ ack; int response; int * request_header; int length; int * data; } ;
struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_response ) (struct fw_card*,int *) ;} ;


 scalar_t__ ACK_PENDING ;
 scalar_t__ HEADER_DESTINATION_IS_BROADCAST (int ) ;
 int RCODE_COMPLETE ;
 int fw_fill_response (int *,int *,int,int *,int ) ;
 int kfree (struct fw_request*) ;
 int stub1 (struct fw_card*,int *) ;

void fw_send_response(struct fw_card *card,
        struct fw_request *request, int rcode)
{

 if (request->ack != ACK_PENDING ||
     HEADER_DESTINATION_IS_BROADCAST(request->request_header[0])) {
  kfree(request);
  return;
 }

 if (rcode == RCODE_COMPLETE)
  fw_fill_response(&request->response, request->request_header,
     rcode, request->data, request->length);
 else
  fw_fill_response(&request->response, request->request_header,
     rcode, ((void*)0), 0);

 card->driver->send_response(card, &request->response);
}
