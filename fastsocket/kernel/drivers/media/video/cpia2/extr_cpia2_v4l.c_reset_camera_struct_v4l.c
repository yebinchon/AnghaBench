
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_13__ {int stream_mode; } ;
struct TYPE_12__ {int mains_frequency; int flicker_mode_req; } ;
struct TYPE_10__ {int height; int width; } ;
struct TYPE_9__ {scalar_t__ contrast; scalar_t__ saturation; scalar_t__ brightness; } ;
struct TYPE_14__ {TYPE_6__ camera_state; TYPE_5__ flicker_control; TYPE_3__ roi; TYPE_2__ color_params; } ;
struct TYPE_11__ {scalar_t__ clipcount; scalar_t__ flags; int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int palette; int brightness; int colour; int contrast; } ;
struct camera_data {int prio; int pixelformat; TYPE_7__ params; int num_frames; int frame_size; TYPE_4__ vw; TYPE_1__ vp; } ;


 int V4L2_PIX_FMT_JPEG ;
 scalar_t__ VIDEO_PALETTE_RGB24 ;
 int alternate ;
 int buffer_size ;
 int flicker_freq ;
 int flicker_mode ;
 int num_buffers ;
 int v4l2_prio_init (int *) ;

__attribute__((used)) static void reset_camera_struct_v4l(struct camera_data *cam)
{




 cam->vp.palette = (u16) VIDEO_PALETTE_RGB24;
 cam->vp.brightness = (u16) cam->params.color_params.brightness * 256;
 cam->vp.colour = (u16) cam->params.color_params.saturation * 256;
 cam->vp.contrast = (u16) cam->params.color_params.contrast * 256;

 cam->vw.x = 0;
 cam->vw.y = 0;
 cam->vw.width = cam->params.roi.width;
 cam->vw.height = cam->params.roi.height;
 cam->vw.flags = 0;
 cam->vw.clipcount = 0;

 cam->frame_size = buffer_size;
 cam->num_frames = num_buffers;


 cam->params.flicker_control.flicker_mode_req = flicker_mode;
 cam->params.flicker_control.mains_frequency = flicker_freq;


 cam->params.camera_state.stream_mode = alternate;

 cam->pixelformat = V4L2_PIX_FMT_JPEG;
 v4l2_prio_init(&cam->prio);
 return;
}
