
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int streaming; int cwidth; int cheight; int* width; int sizes; int* height; } ;


 int se401_start_stream (struct usb_se401*) ;
 int se401_stop_stream (struct usb_se401*) ;

__attribute__((used)) static int se401_set_size(struct usb_se401 *se401, int width, int height)
{
 int wasstreaming = se401->streaming;

 if (se401->cwidth == width && se401->cheight == height)
  return 0;


 if (!width || !height)
  return 1;
 if ((width & 1) || (height & 1))
  return 1;
 if (width > se401->width[se401->sizes-1])
  return 1;
 if (height > se401->height[se401->sizes-1])
  return 1;


 if (wasstreaming)
  se401_stop_stream(se401);
 se401->cwidth = width;
 se401->cheight = height;
 if (wasstreaming)
  se401_start_stream(se401);
 return 0;
}
