
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int response_code; } ;
struct write_sccb {TYPE_2__ header; } ;
struct sclp_req {scalar_t__ status; } ;
struct TYPE_3__ {void* status; } ;
struct sclp_buffer {int (* callback ) (struct sclp_buffer*,int) ;TYPE_1__ request; int retry_count; struct write_sccb* sccb; } ;
struct sccb_header {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int SCLP_BUFFER_MAX_RETRY ;
 scalar_t__ SCLP_REQ_FAILED ;
 void* SCLP_REQ_FILLED ;
 int sclp_add_request (struct sclp_req*) ;
 int sclp_remove_processed (struct sccb_header*) ;
 int stub1 (struct sclp_buffer*,int) ;
 int stub2 (struct sclp_buffer*,int) ;

__attribute__((used)) static void
sclp_writedata_callback(struct sclp_req *request, void *data)
{
 int rc;
 struct sclp_buffer *buffer;
 struct write_sccb *sccb;

 buffer = (struct sclp_buffer *) data;
 sccb = buffer->sccb;

 if (request->status == SCLP_REQ_FAILED) {
  if (buffer->callback != ((void*)0))
   buffer->callback(buffer, -EIO);
  return;
 }

 switch (sccb->header.response_code) {
 case 0x0020 :

  rc = 0;
  break;

 case 0x0340:
  if (++buffer->retry_count > SCLP_BUFFER_MAX_RETRY) {
   rc = -EIO;
   break;
  }

  if (sclp_remove_processed((struct sccb_header *) sccb) > 0) {

   sccb->header.response_code = 0x0000;
   buffer->request.status = SCLP_REQ_FILLED;
   rc = sclp_add_request(request);
   if (rc == 0)
    return;
  } else
   rc = 0;
  break;

 case 0x0040:
 case 0x05f0:
  if (++buffer->retry_count > SCLP_BUFFER_MAX_RETRY) {
   rc = -EIO;
   break;
  }

  sccb->header.response_code = 0x0000;
  buffer->request.status = SCLP_REQ_FILLED;
  rc = sclp_add_request(request);
  if (rc == 0)
   return;
  break;
 default:
  if (sccb->header.response_code == 0x71f0)
   rc = -ENOMEM;
  else
   rc = -EINVAL;
  break;
 }
 if (buffer->callback != ((void*)0))
  buffer->callback(buffer, rc);
}
