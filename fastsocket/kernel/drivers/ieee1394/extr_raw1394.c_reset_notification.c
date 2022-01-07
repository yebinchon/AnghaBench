
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ misc; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {scalar_t__ notification; } ;


 int DBGMSG (char*,char*) ;
 int EINVAL ;
 scalar_t__ RAW1394_NOTIFY_OFF ;
 scalar_t__ RAW1394_NOTIFY_ON ;
 int free_pending_request (struct pending_request*) ;

__attribute__((used)) static int reset_notification(struct file_info *fi, struct pending_request *req)
{
 DBGMSG("reset_notification called - switch %s ",
        (req->req.misc == RAW1394_NOTIFY_OFF) ? "OFF" : "ON");
 if ((req->req.misc == RAW1394_NOTIFY_OFF) ||
     (req->req.misc == RAW1394_NOTIFY_ON)) {
  fi->notification = (u8) req->req.misc;
  free_pending_request(req);
  return 0;
 }

 return (-EINVAL);
}
