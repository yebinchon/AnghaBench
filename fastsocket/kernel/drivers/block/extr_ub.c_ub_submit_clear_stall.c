
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; int bRequest; int bRequestType; } ;
struct ub_scsi_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ub_dev {TYPE_1__ work_timer; int work_done; int work_urb; int send_ctrl_pipe; int dev; struct usb_ctrlrequest work_cr; } ;


 int GFP_ATOMIC ;
 scalar_t__ UB_CTRL_TIMEOUT ;
 int UB_INIT_COMPLETION (int ) ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int add_timer (TYPE_1__*) ;
 void* cpu_to_le16 (int) ;
 scalar_t__ jiffies ;
 int ub_complete (int *) ;
 int ub_urb_complete ;
 int usb_fill_control_urb (int *,int ,int ,unsigned char*,int *,int ,int ,struct ub_dev*) ;
 int usb_pipeendpoint (int) ;
 scalar_t__ usb_pipein (int) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int ub_submit_clear_stall(struct ub_dev *sc, struct ub_scsi_cmd *cmd,
    int stalled_pipe)
{
 int endp;
 struct usb_ctrlrequest *cr;
 int rc;

 endp = usb_pipeendpoint(stalled_pipe);
 if (usb_pipein (stalled_pipe))
  endp |= USB_DIR_IN;

 cr = &sc->work_cr;
 cr->bRequestType = USB_RECIP_ENDPOINT;
 cr->bRequest = USB_REQ_CLEAR_FEATURE;
 cr->wValue = cpu_to_le16(USB_ENDPOINT_HALT);
 cr->wIndex = cpu_to_le16(endp);
 cr->wLength = cpu_to_le16(0);

 UB_INIT_COMPLETION(sc->work_done);

 usb_fill_control_urb(&sc->work_urb, sc->dev, sc->send_ctrl_pipe,
     (unsigned char*) cr, ((void*)0), 0, ub_urb_complete, sc);

 if ((rc = usb_submit_urb(&sc->work_urb, GFP_ATOMIC)) != 0) {
  ub_complete(&sc->work_done);
  return rc;
 }

 sc->work_timer.expires = jiffies + UB_CTRL_TIMEOUT;
 add_timer(&sc->work_timer);
 return 0;
}
