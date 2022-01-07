
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct poseidon {int kref; int v4l2_dev; int dvb_data; int lock; int state; } ;


 int POSEIDON_STATE_DISCONNECT ;
 int dvb_stop_streaming (int *) ;
 struct poseidon* get_pd (struct usb_interface*) ;
 scalar_t__ in_hibernation (struct poseidon*) ;
 int kref_put (int *,int ) ;
 int logpm (struct poseidon*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pd_dvb_usb_device_exit (struct poseidon*) ;
 int pd_video_exit (struct poseidon*) ;
 int poseidon_audio_free (struct poseidon*) ;
 int poseidon_delete ;
 int poseidon_fm_exit (struct poseidon*) ;
 int stop_all_video_stream (struct poseidon*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void poseidon_disconnect(struct usb_interface *interface)
{
 struct poseidon *pd = get_pd(interface);

 if (!pd)
  return;
 logpm(pd);
 if (in_hibernation(pd))
  return;

 mutex_lock(&pd->lock);
 pd->state |= POSEIDON_STATE_DISCONNECT;
 mutex_unlock(&pd->lock);


 stop_all_video_stream(pd);
 dvb_stop_streaming(&pd->dvb_data);


 v4l2_device_unregister(&pd->v4l2_dev);

 pd_dvb_usb_device_exit(pd);
 poseidon_fm_exit(pd);

 poseidon_audio_free(pd);
 pd_video_exit(pd);

 usb_set_intfdata(interface, ((void*)0));
 kref_put(&pd->kref, poseidon_delete);
}
