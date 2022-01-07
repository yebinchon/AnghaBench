
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct urb {int number_of_packets; TYPE_2__* iso_frame_desc; scalar_t__ transfer_buffer; int status; } ;
struct gspca_dev {int empty_packet; int last_packet_type; TYPE_1__* sd_desc; scalar_t__ frozen; } ;
typedef int (* cam_pkt_op ) (struct gspca_dev*,int *,int) ;
struct TYPE_4__ {int actual_length; int status; int offset; } ;
struct TYPE_3__ {int (* pkt_scan ) (struct gspca_dev*,int *,int) ;} ;


 int DISCARD_PACKET ;
 int D_ERR ;
 int D_PACK ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int PDEBUG (int,char*,int,...) ;
 int err (char*,int,...) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void fill_frame(struct gspca_dev *gspca_dev,
   struct urb *urb)
{
 u8 *data;
 int i, len, st;
 cam_pkt_op pkt_scan;

 if (urb->status != 0) {
  if (urb->status == -ESHUTDOWN)
   return;




  PDEBUG(D_ERR|D_PACK, "urb status: %d", urb->status);
  urb->status = 0;
  goto resubmit;
 }
 pkt_scan = gspca_dev->sd_desc->pkt_scan;
 for (i = 0; i < urb->number_of_packets; i++) {
  len = urb->iso_frame_desc[i].actual_length;


  st = urb->iso_frame_desc[i].status;
  if (st) {
   err("ISOC data error: [%d] len=%d, status=%d",
    i, len, st);
   gspca_dev->last_packet_type = DISCARD_PACKET;
   continue;
  }
  if (len == 0) {
   if (gspca_dev->empty_packet == 0)
    gspca_dev->empty_packet = 1;
   continue;
  }


  PDEBUG(D_PACK, "packet [%d] o:%d l:%d",
   i, urb->iso_frame_desc[i].offset, len);
  data = (u8 *) urb->transfer_buffer
     + urb->iso_frame_desc[i].offset;
  pkt_scan(gspca_dev, data, len);
 }

resubmit:

 st = usb_submit_urb(urb, GFP_ATOMIC);
 if (st < 0)
  err("usb_submit_urb() ret %d", st);
}
