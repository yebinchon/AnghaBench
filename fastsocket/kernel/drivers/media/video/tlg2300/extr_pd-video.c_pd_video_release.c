
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int users; int * front; } ;
struct TYPE_5__ {int users; } ;
struct poseidon {int kref; int lock; int interface; TYPE_1__ vbi_data; int state; TYPE_2__ video_data; int * file_for_stream; } ;
struct front_face {scalar_t__ type; int q; struct poseidon* pd; } ;
struct file {struct front_face* private_data; } ;
typedef int s32 ;


 int PLAY_SERVICE ;
 int POSEIDON_STATE_ANALOG ;
 int POSEIDON_STATE_VBI ;
 int TLG_TUNE_PLAY_SVC_STOP ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int free_all_urb (TYPE_2__*) ;
 int kfree (struct front_face*) ;
 int kref_put (int *,int ) ;
 int logs (struct front_face*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poseidon_delete ;
 int send_set_req (struct poseidon*,int ,int ,int *) ;
 int usb_autopm_put_interface (int ) ;
 int usb_transfer_stop (TYPE_2__*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;

__attribute__((used)) static int pd_video_release(struct file *file)
{
 struct front_face *front = file->private_data;
 struct poseidon *pd = front->pd;
 s32 cmd_status = 0;

 logs(front);
 mutex_lock(&pd->lock);

 if (front->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  pd->state &= ~POSEIDON_STATE_ANALOG;


  usb_transfer_stop(&pd->video_data);
  free_all_urb(&pd->video_data);


  send_set_req(pd, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_STOP,
          &cmd_status);

  pd->file_for_stream = ((void*)0);
  pd->video_data.users--;
 } else if (front->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  pd->state &= ~POSEIDON_STATE_VBI;
  pd->vbi_data.front = ((void*)0);
  pd->vbi_data.users--;
 }
 videobuf_stop(&front->q);
 videobuf_mmap_free(&front->q);

 usb_autopm_put_interface(pd->interface);
 mutex_unlock(&pd->lock);

 kfree(front);
 file->private_data = ((void*)0);
 kref_put(&pd->kref, poseidon_delete);
 return 0;
}
