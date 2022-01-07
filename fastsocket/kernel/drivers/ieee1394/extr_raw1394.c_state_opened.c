
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int misc; scalar_t__ length; int error; int generation; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {int protocol_version; int state; } ;


 int RAW1394_ERROR_COMPAT ;
 int RAW1394_ERROR_NONE ;
 int RAW1394_ERROR_STATE_ORDER ;

 scalar_t__ RAW1394_REQ_INITIALIZE ;
 int atomic_read (int *) ;
 int initialized ;
 int internal_generation ;
 int queue_complete_req (struct pending_request*) ;

__attribute__((used)) static int state_opened(struct file_info *fi, struct pending_request *req)
{
 if (req->req.type == RAW1394_REQ_INITIALIZE) {
  switch (req->req.misc) {
  case 128:
  case 3:
   fi->state = initialized;
   fi->protocol_version = req->req.misc;
   req->req.error = RAW1394_ERROR_NONE;
   req->req.generation = atomic_read(&internal_generation);
   break;

  default:
   req->req.error = RAW1394_ERROR_COMPAT;
   req->req.misc = 128;
  }
 } else {
  req->req.error = RAW1394_ERROR_STATE_ORDER;
 }

 req->req.length = 0;
 queue_complete_req(req);
 return 0;
}
