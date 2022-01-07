
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int video_endp; int dev; } ;


 int usb_clear_halt (int ,int ) ;

__attribute__((used)) static int ultracam_resetPipe(struct uvd *uvd)
{
 usb_clear_halt(uvd->dev, uvd->video_endp);
 return 0;
}
