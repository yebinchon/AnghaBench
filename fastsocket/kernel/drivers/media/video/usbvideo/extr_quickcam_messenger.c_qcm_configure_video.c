
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int channels; int name; int type; scalar_t__ channel; scalar_t__ tuners; scalar_t__ flags; int maxheight; int maxwidth; int minheight; int minwidth; scalar_t__ audios; int palette; int whiteness; int contrast; int brightness; int hue; int colour; } ;
struct uvd {TYPE_1__ vchan; TYPE_1__ vcap; TYPE_1__ vpic; TYPE_1__ vpic_old; } ;
struct TYPE_4__ {int height; int width; } ;


 int CHECK_RET (int,int ) ;
 size_t SIZE_160X120 ;
 size_t SIZE_320X240 ;
 int VIDEO_PALETTE_RGB24 ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int brightness ;
 TYPE_2__* camera_sizes ;
 int colour ;
 int contrast ;
 int hue ;
 int memset (TYPE_1__*,int,int) ;
 int qcm_sensor_init (struct uvd*) ;
 int strcpy (int ,char*) ;
 int whiteness ;

__attribute__((used)) static int qcm_configure_video(struct uvd *uvd)
{
 int ret;
 memset(&uvd->vpic, 0, sizeof(uvd->vpic));
 memset(&uvd->vpic_old, 0x55, sizeof(uvd->vpic_old));

 uvd->vpic.colour = colour;
 uvd->vpic.hue = hue;
 uvd->vpic.brightness = brightness;
 uvd->vpic.contrast = contrast;
 uvd->vpic.whiteness = whiteness;
 uvd->vpic.depth = 24;
 uvd->vpic.palette = VIDEO_PALETTE_RGB24;

 memset(&uvd->vcap, 0, sizeof(uvd->vcap));
 strcpy(uvd->vcap.name, "QCM USB Camera");
 uvd->vcap.type = VID_TYPE_CAPTURE;
 uvd->vcap.channels = 1;
 uvd->vcap.audios = 0;

 uvd->vcap.minwidth = camera_sizes[SIZE_160X120].width;
 uvd->vcap.minheight = camera_sizes[SIZE_160X120].height;
 uvd->vcap.maxwidth = camera_sizes[SIZE_320X240].width;
 uvd->vcap.maxheight = camera_sizes[SIZE_320X240].height;

 memset(&uvd->vchan, 0, sizeof(uvd->vchan));
 uvd->vchan.flags = 0 ;
 uvd->vchan.tuners = 0;
 uvd->vchan.channel = 0;
 uvd->vchan.type = VIDEO_TYPE_CAMERA;
 strcpy(uvd->vchan.name, "Camera");

 CHECK_RET(ret, qcm_sensor_init(uvd));
 return 0;
}
