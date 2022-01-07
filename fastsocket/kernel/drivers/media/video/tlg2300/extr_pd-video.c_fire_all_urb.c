
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int is_streaming; int * urb_array; } ;


 int GFP_KERNEL ;
 int SBUF_NUM ;
 int log (char*,int,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int fire_all_urb(struct video_data *video)
{
 int i, ret;

 video->is_streaming = 1;

 for (i = 0; i < SBUF_NUM; i++) {
  ret = usb_submit_urb(video->urb_array[i], GFP_KERNEL);
  if (ret)
   log("(%d) failed: error %d", i, ret);
 }
 return ret;
}
