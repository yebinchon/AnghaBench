
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {size_t outtail; int restart_work; int last_out; TYPE_2__* urbout; TYPE_1__* out; int outbuf; int iofl; } ;
struct hid_report {int size; scalar_t__ id; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_4__ {int transfer_buffer_length; int dev; } ;
struct TYPE_3__ {char* raw_report; struct hid_report* report; } ;


 int GFP_ATOMIC ;
 int HID_REPORTED_IDLE ;
 int dbg_hid (char*) ;
 int err_hid (char*) ;
 int hid_to_usb_dev (struct hid_device*) ;
 int jiffies ;
 int kfree (char*) ;
 int memcpy (int ,char*,int) ;
 int queue_work (int ,int *) ;
 int resumption_waker ;
 int test_bit (int ,int *) ;
 scalar_t__ usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int hid_submit_out(struct hid_device *hid)
{
 struct hid_report *report;
 char *raw_report;
 struct usbhid_device *usbhid = hid->driver_data;

 report = usbhid->out[usbhid->outtail].report;
 raw_report = usbhid->out[usbhid->outtail].raw_report;

 if (!test_bit(HID_REPORTED_IDLE, &usbhid->iofl)) {
  usbhid->urbout->transfer_buffer_length = ((report->size - 1) >> 3) + 1 + (report->id > 0);
  usbhid->urbout->dev = hid_to_usb_dev(hid);
  if (raw_report) {
   memcpy(usbhid->outbuf, raw_report,
    usbhid->urbout->transfer_buffer_length);
   kfree(raw_report);
   usbhid->out[usbhid->outtail].raw_report = ((void*)0);
  }

  dbg_hid("submitting out urb\n");

  if (usb_submit_urb(usbhid->urbout, GFP_ATOMIC)) {
   err_hid("usb_submit_urb(out) failed");
   return -1;
  }
  usbhid->last_out = jiffies;
 } else {





  queue_work(resumption_waker, &usbhid->restart_work);
 }

 return 0;
}
