
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iso_skip_count; int iso_err_count; } ;
struct uvd {int dp; TYPE_3__* dev; TYPE_1__ stats; scalar_t__ user_data; } ;
struct urb {unsigned char* transfer_buffer; int number_of_packets; TYPE_2__* iso_frame_desc; } ;
struct konicawc {int buttonsts; int lastframe; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int actual_length; int status; int offset; } ;


 int DEBUG (int,char*,...) ;
 int RingQueue_Enqueue (int *,...) ;
 int dev_info (int *,char*,unsigned char) ;
 int konicawc_report_buttonstat (struct konicawc*) ;

__attribute__((used)) static int konicawc_compress_iso(struct uvd *uvd, struct urb *dataurb, struct urb *stsurb)
{
 char *cdata;
 int i, totlen = 0;
 unsigned char *status = stsurb->transfer_buffer;
 int keep = 0, discard = 0, bad = 0;
 struct konicawc *cam = (struct konicawc *)uvd->user_data;

 for (i = 0; i < dataurb->number_of_packets; i++) {
  int button = cam->buttonsts;
  unsigned char sts;
  int n = dataurb->iso_frame_desc[i].actual_length;
  int st = dataurb->iso_frame_desc[i].status;
  cdata = dataurb->transfer_buffer +
   dataurb->iso_frame_desc[i].offset;


  if (st < 0) {
   DEBUG(1, "Data error: packet=%d. len=%d. status=%d.",
         i, n, st);
   uvd->stats.iso_err_count++;
   continue;
  }


  if (n <= 0) {
   uvd->stats.iso_skip_count++;
   continue;
  }


  sts = *(status+stsurb->iso_frame_desc[i].offset);
  if(sts < 0x80) {
   button = !!(sts & 0x40);
   sts &= ~0x40;
  }




  if(button != cam->buttonsts) {
   DEBUG(2, "button: %sclicked", button ? "" : "un");
   cam->buttonsts = button;
   konicawc_report_buttonstat(cam);
  }

  if(sts == 0x01) {
   discard++;
   continue;
  }

  if((sts > 0x01) && (sts < 0x80)) {
   dev_info(&uvd->dev->dev, "unknown status %2.2x\n",
     sts);
   bad++;
   continue;
  }
  if(!sts && cam->lastframe == -2) {
   DEBUG(2, "dropping frame looking for image start");
   continue;
  }

  keep++;
  if(sts & 0x80) {
   unsigned char marker[] = { 0, 0xff, 0, 0x00 };

   if(cam->lastframe == -2) {
    DEBUG(2, "found initial image");
    cam->lastframe = -1;
   }

   marker[3] = sts & 0x7F;
   RingQueue_Enqueue(&uvd->dp, marker, 4);
   totlen += 4;
  }

  totlen += n;
  RingQueue_Enqueue(&uvd->dp, cdata, n);
 }
 DEBUG(8, "finished: keep = %d discard = %d bad = %d added %d bytes",
      keep, discard, bad, totlen);
 return totlen;
}
