
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int * radio_dev; int * vbi_dev; int * video_dev; } ;


 int video_device_release (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void bttv_unregister_video(struct bttv *btv)
{
 if (btv->video_dev) {
  if (video_is_registered(btv->video_dev))
   video_unregister_device(btv->video_dev);
  else
   video_device_release(btv->video_dev);
  btv->video_dev = ((void*)0);
 }
 if (btv->vbi_dev) {
  if (video_is_registered(btv->vbi_dev))
   video_unregister_device(btv->vbi_dev);
  else
   video_device_release(btv->vbi_dev);
  btv->vbi_dev = ((void*)0);
 }
 if (btv->radio_dev) {
  if (video_is_registered(btv->radio_dev))
   video_unregister_device(btv->radio_dev);
  else
   video_device_release(btv->radio_dev);
  btv->radio_dev = ((void*)0);
 }
}
