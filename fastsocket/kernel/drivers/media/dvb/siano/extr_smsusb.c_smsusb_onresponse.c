
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; scalar_t__ actual_length; scalar_t__ context; } ;
struct smsusb_urb_t {TYPE_1__* cb; struct smsusb_device_t* dev; } ;
struct smsusb_device_t {scalar_t__ response_alignment; int coredev; } ;
struct SmsMsgHdr_ST {scalar_t__ msgLength; int msgFlags; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ offset; scalar_t__ p; } ;


 scalar_t__ ESHUTDOWN ;
 int MSG_HDR_FLAG_SPLIT_MSG ;
 int memcpy (char*,struct SmsMsgHdr_ST*,int) ;
 int sms_err (char*,scalar_t__,scalar_t__,...) ;
 int smscore_onresponse (int ,TYPE_1__*) ;
 int smsendian_handle_message_header (struct SmsMsgHdr_ST*) ;
 int smsusb_submit_urb (struct smsusb_device_t*,struct smsusb_urb_t*) ;

__attribute__((used)) static void smsusb_onresponse(struct urb *urb)
{
 struct smsusb_urb_t *surb = (struct smsusb_urb_t *) urb->context;
 struct smsusb_device_t *dev = surb->dev;

 if (urb->status == -ESHUTDOWN) {
  sms_err("error, urb status %d (-ESHUTDOWN), %d bytes",
   urb->status, urb->actual_length);
  return;
 }

 if ((urb->actual_length > 0) && (urb->status == 0)) {
  struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *)surb->cb->p;

  smsendian_handle_message_header(phdr);
  if (urb->actual_length >= phdr->msgLength) {
   surb->cb->size = phdr->msgLength;

   if (dev->response_alignment &&
       (phdr->msgFlags & MSG_HDR_FLAG_SPLIT_MSG)) {

    surb->cb->offset =
     dev->response_alignment +
     ((phdr->msgFlags >> 8) & 3);


    if (((int) phdr->msgLength +
         surb->cb->offset) > urb->actual_length) {
     sms_err("invalid response "
      "msglen %d offset %d "
      "size %d",
      phdr->msgLength,
      surb->cb->offset,
      urb->actual_length);
     goto exit_and_resubmit;
    }



    memcpy((char *) phdr + surb->cb->offset,
           phdr, sizeof(struct SmsMsgHdr_ST));
   } else
    surb->cb->offset = 0;

   smscore_onresponse(dev->coredev, surb->cb);
   surb->cb = ((void*)0);
  } else {
   sms_err("invalid response "
    "msglen %d actual %d",
    phdr->msgLength, urb->actual_length);
  }
 } else
  sms_err("error, urb status %d, %d bytes",
   urb->status, urb->actual_length);


exit_and_resubmit:
 smsusb_submit_urb(dev, surb);
}
