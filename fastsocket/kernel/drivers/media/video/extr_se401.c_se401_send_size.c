
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int sizes; int* width; int* height; int format; } ;


 int FMT_BAYER ;
 int FMT_JANGGU ;
 int SE401_OPERATINGMODE ;
 int SE401_REQ_SET_HEIGHT ;
 int SE401_REQ_SET_WIDTH ;
 int se401_set_feature (struct usb_se401*,int ,int) ;
 int se401_sndctrl (int,struct usb_se401*,int ,int,int *,int ) ;

__attribute__((used)) static void se401_send_size(struct usb_se401 *se401, int width, int height)
{
 int i = 0;
 int mode = 0x03;
 int sendheight = height;
 int sendwidth = width;







 while (i < se401->sizes && !(se401->width[i] == width &&
      se401->height[i] == height))
  i++;
 while (i < se401->sizes) {
  if (se401->width[i] == width * 2 &&
    se401->height[i] == height * 2) {
   sendheight = se401->height[i];
   sendwidth = se401->width[i];
   mode = 0x40;
  }
  if (se401->width[i] == width * 4 &&
    se401->height[i] == height * 4) {
   sendheight = se401->height[i];
   sendwidth = se401->width[i];
   mode = 0x42;
  }
  i++;
 }

 se401_sndctrl(1, se401, SE401_REQ_SET_WIDTH, sendwidth, ((void*)0), 0);
 se401_sndctrl(1, se401, SE401_REQ_SET_HEIGHT, sendheight, ((void*)0), 0);
 se401_set_feature(se401, SE401_OPERATINGMODE, mode);

 if (mode == 0x03)
  se401->format = FMT_BAYER;
 else
  se401->format = FMT_JANGGU;
}
