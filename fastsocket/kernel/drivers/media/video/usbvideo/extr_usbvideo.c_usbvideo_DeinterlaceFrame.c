
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int flags; } ;
struct usbvideo_frame {scalar_t__ deinterlace; unsigned char* data; int request; } ;


 scalar_t__ Deinterlace_FillEvenLines ;
 scalar_t__ Deinterlace_FillOddLines ;
 int FLAGS_OVERLAY_STATS ;
 int V4L_BYTES_PER_PIXEL ;
 int VIDEOSIZE_X (int ) ;
 int VIDEOSIZE_Y (int ) ;
 int err (char*,int,int,int) ;
 int usbvideo_OverlayStats (struct uvd*,struct usbvideo_frame*) ;

void usbvideo_DeinterlaceFrame(struct uvd *uvd, struct usbvideo_frame *frame)
{
 if ((uvd == ((void*)0)) || (frame == ((void*)0)))
  return;

 if ((frame->deinterlace == Deinterlace_FillEvenLines) ||
     (frame->deinterlace == Deinterlace_FillOddLines))
 {
  const int v4l_linesize = VIDEOSIZE_X(frame->request) * V4L_BYTES_PER_PIXEL;
  int i = (frame->deinterlace == Deinterlace_FillEvenLines) ? 0 : 1;

  for (; i < VIDEOSIZE_Y(frame->request); i += 2) {
   const unsigned char *fs1, *fs2;
   unsigned char *fd;
   int ip, in, j;






   ip = i - 1;
   in = i + 1;


   if (ip < 0)
    ip = in;
   if (in >= VIDEOSIZE_Y(frame->request))
    in = ip;


   if ((ip < 0) || (in < 0) ||
       (ip >= VIDEOSIZE_Y(frame->request)) ||
       (in >= VIDEOSIZE_Y(frame->request)))
   {
    err("Error: ip=%d. in=%d. req.height=%ld.",
        ip, in, VIDEOSIZE_Y(frame->request));
    break;
   }


   fs1 = frame->data + (v4l_linesize * ip);
   fs2 = frame->data + (v4l_linesize * in);
   fd = frame->data + (v4l_linesize * i);


   for (j=0; j < v4l_linesize; j++) {
    fd[j] = (unsigned char)((((unsigned) fs1[j]) +
        ((unsigned)fs2[j])) >> 1);
   }
  }
 }


 if (uvd->flags & FLAGS_OVERLAY_STATS)
  usbvideo_OverlayStats(uvd, frame);
}
