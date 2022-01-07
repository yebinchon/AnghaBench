
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long urb_count; unsigned long iso_skip_count; unsigned long iso_err_count; unsigned long data_count; } ;
struct uvd {unsigned long iso_packet_len; TYPE_2__* dev; TYPE_1__ stats; } ;
struct TYPE_4__ {int dev; } ;


 unsigned long CAMERA_URB_FRAMES ;
 int assert (int) ;
 int dev_info (int *,char*,unsigned long,char,unsigned long) ;

__attribute__((used)) static void usbvideo_ReportStatistics(const struct uvd *uvd)
{
 if ((uvd != ((void*)0)) && (uvd->stats.urb_count > 0)) {
  unsigned long allPackets, badPackets, goodPackets, percent;
  allPackets = uvd->stats.urb_count * CAMERA_URB_FRAMES;
  badPackets = uvd->stats.iso_skip_count + uvd->stats.iso_err_count;
  goodPackets = allPackets - badPackets;

  assert(allPackets != 0);
  if (goodPackets < (((unsigned long)-1)/100))
   percent = (100 * goodPackets) / allPackets;
  else
   percent = goodPackets / (allPackets / 100);
  dev_info(&uvd->dev->dev,
    "Packet Statistics: Total=%lu. Empty=%lu. Usage=%lu%%\n",
    allPackets, badPackets, percent);
  if (uvd->iso_packet_len > 0) {
   unsigned long allBytes, xferBytes;
   char multiplier = ' ';
   allBytes = allPackets * uvd->iso_packet_len;
   xferBytes = uvd->stats.data_count;
   assert(allBytes != 0);
   if (xferBytes < (((unsigned long)-1)/100))
    percent = (100 * xferBytes) / allBytes;
   else
    percent = xferBytes / (allBytes / 100);

   if (xferBytes > 10*1024) {
    xferBytes /= 1024;
    multiplier = 'K';
    if (xferBytes > 10*1024) {
     xferBytes /= 1024;
     multiplier = 'M';
     if (xferBytes > 10*1024) {
      xferBytes /= 1024;
      multiplier = 'G';
      if (xferBytes > 10*1024) {
       xferBytes /= 1024;
       multiplier = 'T';
      }
     }
    }
   }
   dev_info(&uvd->dev->dev,
     "Transfer Statistics: Transferred=%lu%cB Usage=%lu%%\n",
     xferBytes, multiplier, percent);
  }
 }
}
