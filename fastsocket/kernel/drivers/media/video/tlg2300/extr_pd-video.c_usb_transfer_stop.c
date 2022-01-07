
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {scalar_t__* urb_array; scalar_t__ is_streaming; struct poseidon* pd; } ;
struct poseidon {int dummy; } ;
typedef int s32 ;


 int PLAY_SERVICE ;
 int SBUF_NUM ;
 int TLG_TUNE_PLAY_SVC_STOP ;
 int send_set_req (struct poseidon*,int ,int ,int *) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int usb_transfer_stop(struct video_data *video)
{
 if (video->is_streaming) {
  int i;
  s32 cmd_status;
  struct poseidon *pd = video->pd;

  video->is_streaming = 0;
  for (i = 0; i < SBUF_NUM; ++i) {
   if (video->urb_array[i])
    usb_kill_urb(video->urb_array[i]);
  }

  send_set_req(pd, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_STOP,
          &cmd_status);
 }
 return 0;
}
