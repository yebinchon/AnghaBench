
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct amradio_device {struct amradio_device* buffer; int v4l2_dev; } ;


 int kfree (struct amradio_device*) ;
 int v4l2_device_unregister (int *) ;
 int video_device_release (struct video_device*) ;
 struct amradio_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void usb_amradio_video_device_release(struct video_device *videodev)
{
 struct amradio_device *radio = video_get_drvdata(videodev);


 video_device_release(videodev);

 v4l2_device_unregister(&radio->v4l2_dev);


 kfree(radio->buffer);
 kfree(radio);
}
