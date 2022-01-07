
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; void* error; int recvb; scalar_t__ misc; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {int * fcp_buffer; } ;


 void* RAW1394_ERROR_ALREADY ;
 int * int2ptr (int ) ;
 int queue_complete_req (struct pending_request*) ;

__attribute__((used)) static void handle_fcp_listen(struct file_info *fi, struct pending_request *req)
{
 if (req->req.misc) {
  if (fi->fcp_buffer) {
   req->req.error = RAW1394_ERROR_ALREADY;
  } else {
   fi->fcp_buffer = int2ptr(req->req.recvb);
  }
 } else {
  if (!fi->fcp_buffer) {
   req->req.error = RAW1394_ERROR_ALREADY;
  } else {
   fi->fcp_buffer = ((void*)0);
  }
 }

 req->req.length = 0;
 queue_complete_req(req);
}
