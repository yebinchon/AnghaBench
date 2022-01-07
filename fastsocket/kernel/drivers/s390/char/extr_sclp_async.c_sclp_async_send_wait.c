
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int response_code; } ;
struct sclp_async_sccb {TYPE_2__ header; } ;
struct TYPE_9__ {int length; int flags; int type; } ;
struct async_evbuf {int rtype; int otype; TYPE_3__ header; int comp_id; int data; } ;
struct TYPE_7__ {int length; int function_code; } ;
struct TYPE_11__ {TYPE_1__ header; struct async_evbuf evbuf; } ;
struct TYPE_10__ {scalar_t__ status; TYPE_5__* sccb; int command; } ;


 int EIO ;
 int EVTYP_ASYNC ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int SCLP_NORMAL_WRITE ;
 scalar_t__ SCLP_REQ_DONE ;
 scalar_t__ SCLP_REQ_FAILED ;
 scalar_t__ SCLP_REQ_FILLED ;
 int callhome_enabled ;
 TYPE_4__* request ;
 TYPE_5__* sccb ;
 int sclp_add_request (TYPE_4__*) ;
 int sclp_async_lock ;
 int sclp_sync_wait () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int sclp_async_send_wait(char *message)
{
 struct async_evbuf *evb;
 int rc;
 unsigned long flags;

 if (!callhome_enabled)
  return 0;
 sccb->evbuf.header.type = EVTYP_ASYNC;
 sccb->evbuf.rtype = 0xA5;
 sccb->evbuf.otype = 0x00;
 evb = &sccb->evbuf;
 request->command = SCLP_CMDW_WRITE_EVENT_DATA;
 request->sccb = sccb;
 request->status = SCLP_REQ_FILLED;
 strncpy(sccb->evbuf.data, message, sizeof(sccb->evbuf.data));
 strncpy(sccb->evbuf.comp_id, "5639H7CH0", sizeof(sccb->evbuf.comp_id));
 sccb->evbuf.header.length = sizeof(sccb->evbuf);
 sccb->header.length = sizeof(sccb->evbuf) + sizeof(sccb->header);
 sccb->header.function_code = SCLP_NORMAL_WRITE;
 rc = sclp_add_request(request);
 if (rc)
  return rc;
 spin_lock_irqsave(&sclp_async_lock, flags);
 while (request->status != SCLP_REQ_DONE &&
  request->status != SCLP_REQ_FAILED) {
   sclp_sync_wait();
 }
 spin_unlock_irqrestore(&sclp_async_lock, flags);
 if (request->status != SCLP_REQ_DONE)
  return -EIO;
 rc = ((struct sclp_async_sccb *)
        request->sccb)->header.response_code;
 if (rc != 0x0020)
  return -EIO;
 if (evb->header.flags != 0x80)
  return -EIO;
 return rc;
}
