
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {int * clips; scalar_t__ clipcount; scalar_t__ flags; scalar_t__ chromakey; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_19__ {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_18__ {int colour; int hue; int brightness; int contrast; int depth; int palette; scalar_t__ whiteness; } ;
struct TYPE_34__ {scalar_t__ cradled; scalar_t__ button; scalar_t__ bottomlight; scalar_t__ toplight; scalar_t__ qx3_detected; } ;
struct TYPE_33__ {int targetFR; int targetQ; int frTargeting; } ;
struct TYPE_32__ {int mode; } ;
struct TYPE_31__ {int yuvOrder; int subSample; } ;
struct TYPE_30__ {int yThreshold; int uvThreshold; } ;
struct TYPE_29__ {size_t baserate; size_t divisor; } ;
struct TYPE_28__ {int hysteresis; int threshMax; int smallStep; int largeStep; int decimationHysteresis; int frDiffStepThresh; int qDiffStepThresh; int decimationThreshMod; } ;
struct TYPE_27__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_21__ {int brightness; int contrast; int saturation; } ;
struct TYPE_26__ {int disabled; int allowableOverExposure; int coarseJump; scalar_t__ flickerMode; } ;
struct TYPE_25__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_23__ {int balanceMode; int redGain; int greenGain; int blueGain; } ;
struct TYPE_22__ {int gainMode; int expMode; int compMode; int centreWeight; int coarseExpLo; int blueComp; int green2Comp; int green1Comp; int redComp; scalar_t__ coarseExpHi; scalar_t__ fineExp; scalar_t__ gain; } ;
struct TYPE_24__ {TYPE_9__ qx3; TYPE_8__ compressionTarget; TYPE_7__ compression; TYPE_6__ format; TYPE_5__ yuvThreshold; TYPE_4__ sensorFps; TYPE_3__ compressionParams; TYPE_2__ vlOffset; TYPE_13__ colourParams; TYPE_1__ flickerControl; TYPE_17__ apcor; TYPE_15__ colourBalance; TYPE_14__ exposure; } ;
struct cam_data {size_t mainsFreq; int first_frame; int cmd_queue; TYPE_12__ vw; TYPE_11__ vc; TYPE_10__ vp; int video_size; TYPE_16__ params; int exposure_status; scalar_t__ transfer_rate; } ;


 int COMMAND_NONE ;
 int COMP_BLUE ;
 int COMP_GREEN1 ;
 int COMP_GREEN2 ;
 int COMP_RED ;
 int CPIA_COMPRESSION_AUTO ;
 int CPIA_COMPRESSION_TARGET_QUALITY ;
 int EXPOSURE_NORMAL ;
 int SUBSAMPLE_422 ;
 int VIDEOSIZE_CIF ;
 int VIDEO_PALETTE_RGB24 ;
 int YUVORDER_YUYV ;
 int find_over_exposure (int) ;
 int *** flicker_jumps ;
 int set_vw_size (struct cam_data*) ;

__attribute__((used)) static void reset_camera_struct(struct cam_data *cam)
{



 cam->params.colourParams.brightness = 50;
 cam->params.colourParams.contrast = 48;
 cam->params.colourParams.saturation = 50;
 cam->params.exposure.gainMode = 4;
 cam->params.exposure.expMode = 2;
 cam->params.exposure.compMode = 1;
 cam->params.exposure.centreWeight = 1;
 cam->params.exposure.gain = 0;
 cam->params.exposure.fineExp = 0;
 cam->params.exposure.coarseExpLo = 185;
 cam->params.exposure.coarseExpHi = 0;
 cam->params.exposure.redComp = COMP_RED;
 cam->params.exposure.green1Comp = COMP_GREEN1;
 cam->params.exposure.green2Comp = COMP_GREEN2;
 cam->params.exposure.blueComp = COMP_BLUE;
 cam->params.colourBalance.balanceMode = 2;
 cam->params.colourBalance.redGain = 32;
 cam->params.colourBalance.greenGain = 6;
 cam->params.colourBalance.blueGain = 92;
 cam->params.apcor.gain1 = 0x18;
 cam->params.apcor.gain2 = 0x16;
 cam->params.apcor.gain4 = 0x24;
 cam->params.apcor.gain8 = 0x34;
 cam->params.flickerControl.flickerMode = 0;
 cam->params.flickerControl.disabled = 1;

 cam->params.flickerControl.coarseJump =
  flicker_jumps[cam->mainsFreq]
        [cam->params.sensorFps.baserate]
        [cam->params.sensorFps.divisor];
 cam->params.flickerControl.allowableOverExposure =
  -find_over_exposure(cam->params.colourParams.brightness);
 cam->params.vlOffset.gain1 = 20;
 cam->params.vlOffset.gain2 = 24;
 cam->params.vlOffset.gain4 = 26;
 cam->params.vlOffset.gain8 = 26;
 cam->params.compressionParams.hysteresis = 3;
 cam->params.compressionParams.threshMax = 11;
 cam->params.compressionParams.smallStep = 1;
 cam->params.compressionParams.largeStep = 3;
 cam->params.compressionParams.decimationHysteresis = 2;
 cam->params.compressionParams.frDiffStepThresh = 5;
 cam->params.compressionParams.qDiffStepThresh = 3;
 cam->params.compressionParams.decimationThreshMod = 2;


 cam->transfer_rate = 0;
 cam->exposure_status = EXPOSURE_NORMAL;



 cam->params.sensorFps.divisor = 1;
 cam->params.sensorFps.baserate = 1;

 cam->params.yuvThreshold.yThreshold = 6;
 cam->params.yuvThreshold.uvThreshold = 6;

 cam->params.format.subSample = SUBSAMPLE_422;
 cam->params.format.yuvOrder = YUVORDER_YUYV;

 cam->params.compression.mode = CPIA_COMPRESSION_AUTO;
 cam->params.compressionTarget.frTargeting =
  CPIA_COMPRESSION_TARGET_QUALITY;
 cam->params.compressionTarget.targetFR = 15;
 cam->params.compressionTarget.targetQ = 5;

 cam->params.qx3.qx3_detected = 0;
 cam->params.qx3.toplight = 0;
 cam->params.qx3.bottomlight = 0;
 cam->params.qx3.button = 0;
 cam->params.qx3.cradled = 0;

 cam->video_size = VIDEOSIZE_CIF;

 cam->vp.colour = 32768;
 cam->vp.hue = 32768;
 cam->vp.brightness = 32768;
 cam->vp.contrast = 32768;
 cam->vp.whiteness = 0;
 cam->vp.depth = 24;
 cam->vp.palette = VIDEO_PALETTE_RGB24;

 cam->vc.x = 0;
 cam->vc.y = 0;
 cam->vc.width = 0;
 cam->vc.height = 0;

 cam->vw.x = 0;
 cam->vw.y = 0;
 set_vw_size(cam);
 cam->vw.chromakey = 0;
 cam->vw.flags = 0;
 cam->vw.clipcount = 0;
 cam->vw.clips = ((void*)0);

 cam->cmd_queue = COMMAND_NONE;
 cam->first_frame = 1;

 return;
}
