
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {int swapRB; int nbIm; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; int curr_mode; } ;
typedef size_t s32 ;
typedef int s16 ;
struct TYPE_3__ {int bytesperline; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static s32 nSkipped;

 s32 mode = (s32) gspca_dev->curr_mode;
 s32 nToSkip =
  sd->swapRB * (gspca_dev->cam.cam_mode[mode].bytesperline + 1);


 switch (*(s16 *) data) {
 case 0x0202:
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  nSkipped = 0;
  if (sd->nbIm >= 0 && sd->nbIm < 10)
   sd->nbIm++;
  gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
  break;

 default:
  data += 2;
  len -= 2;
  if (nSkipped + len <= nToSkip)
   nSkipped += len;
  else {
   if (nSkipped < nToSkip && nSkipped + len > nToSkip) {
    data += nToSkip - nSkipped;
    len -= nToSkip - nSkipped;
    nSkipped = nToSkip + 1;
   }
   gspca_frame_add(gspca_dev,
    INTER_PACKET, data, len);
  }
  break;
 }
}
