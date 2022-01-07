
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct urb {int status; int transfer_buffer_length; scalar_t__ start_frame; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ transfer_buffer; scalar_t__ context; } ;
struct sd {scalar_t__ snapshot_pressed; struct urb* last_data_urb; } ;
struct gspca_dev {int input_dev; void* last_packet_type; scalar_t__ frozen; int streaming; } ;
struct TYPE_2__ {int actual_length; int offset; scalar_t__ status; } ;


 void* DISCARD_PACKET ;
 int D_ERR ;
 int D_PACK ;
 int ESHUTDOWN ;
 int FIRST_PACKET ;
 int GFP_ATOMIC ;
 int INTER_PACKET ;
 int KEY_CAMERA ;
 int LAST_PACKET ;
 int PDEBUG (int,char*,...) ;
 int err (char*,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,scalar_t__*,int) ;
 int input_report_key (int ,int ,scalar_t__) ;
 int input_sync (int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void sd_isoc_irq(struct urb *urb)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *) urb->context;
 struct sd *sd = (struct sd *) gspca_dev;
 struct urb *data_urb, *status_urb;
 u8 *data;
 int i, st;

 PDEBUG(D_PACK, "sd isoc irq");
 if (!gspca_dev->streaming)
  return;

 if (urb->status != 0) {
  if (urb->status == -ESHUTDOWN)
   return;




  PDEBUG(D_ERR, "urb status: %d", urb->status);
  st = usb_submit_urb(urb, GFP_ATOMIC);
  if (st < 0)
   err("resubmit urb error %d", st);
  return;
 }


 if (urb->transfer_buffer_length > 32) {
  sd->last_data_urb = urb;
  return;
 }

 status_urb = urb;
 data_urb = sd->last_data_urb;
 sd->last_data_urb = ((void*)0);

 if (!data_urb || data_urb->start_frame != status_urb->start_frame) {
  PDEBUG(D_ERR|D_PACK, "lost sync on frames");
  goto resubmit;
 }

 if (data_urb->number_of_packets != status_urb->number_of_packets) {
  PDEBUG(D_ERR|D_PACK,
         "no packets does not match, data: %d, status: %d",
         data_urb->number_of_packets,
         status_urb->number_of_packets);
  goto resubmit;
 }

 for (i = 0; i < status_urb->number_of_packets; i++) {
  if (data_urb->iso_frame_desc[i].status ||
      status_urb->iso_frame_desc[i].status) {
   PDEBUG(D_ERR|D_PACK,
          "pkt %d data-status %d, status-status %d", i,
          data_urb->iso_frame_desc[i].status,
          status_urb->iso_frame_desc[i].status);
   gspca_dev->last_packet_type = DISCARD_PACKET;
   continue;
  }

  if (status_urb->iso_frame_desc[i].actual_length != 1) {
   PDEBUG(D_ERR|D_PACK,
          "bad status packet length %d",
          status_urb->iso_frame_desc[i].actual_length);
   gspca_dev->last_packet_type = DISCARD_PACKET;
   continue;
  }

  st = *((u8 *)status_urb->transfer_buffer
    + status_urb->iso_frame_desc[i].offset);

  data = (u8 *)data_urb->transfer_buffer
    + data_urb->iso_frame_desc[i].offset;
  if (st & 0x80) {
   gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
   gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
  } else {
   if (st & 0x01)
    continue;
  }
  gspca_frame_add(gspca_dev, INTER_PACKET, data,
    data_urb->iso_frame_desc[i].actual_length);
 }

resubmit:
 if (data_urb) {
  st = usb_submit_urb(data_urb, GFP_ATOMIC);
  if (st < 0)
   PDEBUG(D_ERR|D_PACK,
          "usb_submit_urb(data_urb) ret %d", st);
 }
 st = usb_submit_urb(status_urb, GFP_ATOMIC);
 if (st < 0)
  err("usb_submit_urb(status_urb) ret %d", st);
}
