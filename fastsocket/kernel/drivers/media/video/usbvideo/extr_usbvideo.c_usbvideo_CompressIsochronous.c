
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iso_skip_count; int iso_err_count; } ;
struct uvd {int debug; int dp; TYPE_2__ stats; } ;
struct urb {int number_of_packets; char* transfer_buffer; TYPE_1__* iso_frame_desc; } ;
struct TYPE_3__ {int actual_length; int status; int offset; } ;


 int RingQueue_Enqueue (int *,char*,int) ;
 int err (char*,int,int,int) ;

__attribute__((used)) static int usbvideo_CompressIsochronous(struct uvd *uvd, struct urb *urb)
{
 char *cdata;
 int i, totlen = 0;

 for (i = 0; i < urb->number_of_packets; i++) {
  int n = urb->iso_frame_desc[i].actual_length;
  int st = urb->iso_frame_desc[i].status;

  cdata = urb->transfer_buffer + urb->iso_frame_desc[i].offset;


  if (st < 0) {
   if (uvd->debug >= 1)
    err("Data error: packet=%d. len=%d. status=%d.", i, n, st);
   uvd->stats.iso_err_count++;
   continue;
  }


  if (n <= 0) {
   uvd->stats.iso_skip_count++;
   continue;
  }
  totlen += n;
  RingQueue_Enqueue(&uvd->dp, cdata, n);
 }
 return totlen;
}
