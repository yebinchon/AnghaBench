
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int timestamp; int callback; scalar_t__ ack; int generation; int speed; } ;
struct fw_request {int length; int request_header; int data; int ack; TYPE_1__ response; } ;
struct fw_packet {int* header; int* payload; int timestamp; int ack; int generation; int speed; } ;


 int GFP_ATOMIC ;
 int HEADER_GET_DATA_LENGTH (int) ;
 int HEADER_GET_TCODE (int) ;





 int free_response_callback ;
 int fw_error (char*,int,int,int) ;
 struct fw_request* kmalloc (int,int ) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static struct fw_request *allocate_request(struct fw_packet *p)
{
 struct fw_request *request;
 u32 *data, length;
 int request_tcode, t;

 request_tcode = HEADER_GET_TCODE(p->header[0]);
 switch (request_tcode) {
 case 128:
  data = &p->header[3];
  length = 4;
  break;

 case 129:
 case 132:
  data = p->payload;
  length = HEADER_GET_DATA_LENGTH(p->header[3]);
  break;

 case 130:
  data = ((void*)0);
  length = 4;
  break;

 case 131:
  data = ((void*)0);
  length = HEADER_GET_DATA_LENGTH(p->header[3]);
  break;

 default:
  fw_error("ERROR - corrupt request received - %08x %08x %08x\n",
    p->header[0], p->header[1], p->header[2]);
  return ((void*)0);
 }

 request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
 if (request == ((void*)0))
  return ((void*)0);

 t = (p->timestamp & 0x1fff) + 4000;
 if (t >= 8000)
  t = (p->timestamp & ~0x1fff) + 0x2000 + t - 8000;
 else
  t = (p->timestamp & ~0x1fff) + t;

 request->response.speed = p->speed;
 request->response.timestamp = t;
 request->response.generation = p->generation;
 request->response.ack = 0;
 request->response.callback = free_response_callback;
 request->ack = p->ack;
 request->length = length;
 if (data)
  memcpy(request->data, data, length);

 memcpy(request->request_header, p->header, sizeof(p->header));

 return request;
}
