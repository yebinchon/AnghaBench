
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int bubble_work; } ;
struct poseidon {scalar_t__ cur_transfer_mode; struct video_data video_data; } ;
typedef int s32 ;


 int INIT_WORK (int *,int ) ;
 int PLAY_SERVICE ;
 int TAKE_REQUEST ;
 int TLG_TUNE_PLAY_SVC_START ;
 int fire_all_urb (struct video_data*) ;
 int iso_bubble_handler ;
 int prepare_bulk_urb (struct video_data*) ;
 int prepare_iso_urb (struct video_data*) ;
 int send_set_req (struct poseidon*,int ,int ,int *) ;

__attribute__((used)) static int start_video_stream(struct poseidon *pd)
{
 struct video_data *video = &pd->video_data;
 s32 cmd_status;

 send_set_req(pd, TAKE_REQUEST, 0, &cmd_status);
 send_set_req(pd, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_START, &cmd_status);

 if (pd->cur_transfer_mode) {
  prepare_iso_urb(video);
  INIT_WORK(&video->bubble_work, iso_bubble_handler);
 } else {

  prepare_bulk_urb(video);
 }
 fire_all_urb(video);
 return 0;
}
