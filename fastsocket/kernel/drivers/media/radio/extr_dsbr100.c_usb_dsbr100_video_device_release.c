
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct dsbr100_device {struct dsbr100_device* transfer_buffer; int v4l2_dev; } ;


 int kfree (struct dsbr100_device*) ;
 int v4l2_device_unregister (int *) ;
 struct dsbr100_device* videodev_to_radio (struct video_device*) ;

__attribute__((used)) static void usb_dsbr100_video_device_release(struct video_device *videodev)
{
 struct dsbr100_device *radio = videodev_to_radio(videodev);

 v4l2_device_unregister(&radio->v4l2_dev);
 kfree(radio->transfer_buffer);
 kfree(radio);
}
