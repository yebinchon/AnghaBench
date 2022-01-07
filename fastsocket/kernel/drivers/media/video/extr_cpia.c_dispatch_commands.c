
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_16__ {scalar_t__ bottomlight; scalar_t__ toplight; scalar_t__ qx3_detected; } ;
struct TYPE_30__ {int flickerMode; int coarseJump; int allowableOverExposure; } ;
struct TYPE_29__ {int divisor; int baserate; } ;
struct TYPE_28__ {int mode; int decimation; } ;
struct TYPE_27__ {int decimationThreshMod; int qDiffStepThresh; int frDiffStepThresh; int decimationHysteresis; int largeStep; int smallStep; int threshMax; int hysteresis; } ;
struct TYPE_26__ {int yThreshold; int uvThreshold; } ;
struct TYPE_25__ {int frTargeting; int targetFR; int targetQ; } ;
struct TYPE_24__ {int balanceMode; int redGain; int greenGain; int blueGain; } ;
struct TYPE_23__ {int expMode; int coarseExpHi; int coarseExpLo; int fineExp; int gain; int blueComp; int green2Comp; int green1Comp; int redComp; int centreWeight; int compMode; int gainMode; } ;
struct TYPE_22__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_21__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_19__ {int brightness; int contrast; int saturation; } ;
struct TYPE_18__ {int colStart; int colEnd; int rowStart; int rowEnd; } ;
struct TYPE_17__ {int videoSize; int subSample; int yuvOrder; } ;
struct TYPE_20__ {int ecpTiming; TYPE_10__ qx3; TYPE_9__ flickerControl; TYPE_8__ sensorFps; TYPE_7__ compression; TYPE_6__ compressionParams; TYPE_5__ yuvThreshold; TYPE_4__ compressionTarget; TYPE_3__ colourBalance; TYPE_2__ exposure; TYPE_1__ vlOffset; TYPE_15__ apcor; TYPE_13__ colourParams; TYPE_12__ roi; TYPE_11__ format; } ;
struct cam_data {int cmd_queue; int first_frame; int param_lock; TYPE_14__ params; } ;


 int COMMAND_NONE ;
 int COMMAND_PAUSE ;
 int COMMAND_RESUME ;
 int COMMAND_SETAPCOR ;
 int COMMAND_SETCOLOURBALANCE ;
 int COMMAND_SETCOLOURPARAMS ;
 int COMMAND_SETCOMPRESSION ;
 int COMMAND_SETCOMPRESSIONPARAMS ;
 int COMMAND_SETCOMPRESSIONTARGET ;
 int COMMAND_SETECPTIMING ;
 int COMMAND_SETEXPOSURE ;
 int COMMAND_SETFLICKERCTRL ;
 int COMMAND_SETFORMAT ;
 int COMMAND_SETLIGHTS ;
 int COMMAND_SETSENSORFPS ;
 int COMMAND_SETVLOFFSET ;
 int COMMAND_SETYUVTHRESH ;
 int CPIA_COMMAND_EndStreamCap ;
 int CPIA_COMMAND_SetApcor ;
 int CPIA_COMMAND_SetColourBalance ;
 int CPIA_COMMAND_SetColourParams ;
 int CPIA_COMMAND_SetCompression ;
 int CPIA_COMMAND_SetCompressionParams ;
 int CPIA_COMMAND_SetCompressionTarget ;
 int CPIA_COMMAND_SetECPTiming ;
 int CPIA_COMMAND_SetExposure ;
 int CPIA_COMMAND_SetFlickerCtrl ;
 int CPIA_COMMAND_SetFormat ;
 int CPIA_COMMAND_SetROI ;
 int CPIA_COMMAND_SetSensorFPS ;
 int CPIA_COMMAND_SetVLOffset ;
 int CPIA_COMMAND_SetYUVThresh ;
 int CPIA_COMMAND_WriteMCPort ;
 int CPIA_COMMAND_WriteVCReg ;
 int DEB_BYTE (int) ;
 int abs (int ) ;
 int do_command (struct cam_data*,int ,int,int,int,int ) ;
 int do_command_extended (struct cam_data*,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int init_stream_cap (struct cam_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dispatch_commands(struct cam_data *cam)
{
 mutex_lock(&cam->param_lock);
 if (cam->cmd_queue==COMMAND_NONE) {
  mutex_unlock(&cam->param_lock);
  return;
 }
 DEB_BYTE(cam->cmd_queue);
 DEB_BYTE(cam->cmd_queue>>8);
 if (cam->cmd_queue & COMMAND_SETFORMAT) {
  do_command(cam, CPIA_COMMAND_SetFormat,
      cam->params.format.videoSize,
      cam->params.format.subSample,
      cam->params.format.yuvOrder, 0);
  do_command(cam, CPIA_COMMAND_SetROI,
      cam->params.roi.colStart, cam->params.roi.colEnd,
      cam->params.roi.rowStart, cam->params.roi.rowEnd);
  cam->first_frame = 1;
 }

 if (cam->cmd_queue & COMMAND_SETCOLOURPARAMS)
  do_command(cam, CPIA_COMMAND_SetColourParams,
      cam->params.colourParams.brightness,
      cam->params.colourParams.contrast,
      cam->params.colourParams.saturation, 0);

 if (cam->cmd_queue & COMMAND_SETAPCOR)
  do_command(cam, CPIA_COMMAND_SetApcor,
      cam->params.apcor.gain1,
      cam->params.apcor.gain2,
      cam->params.apcor.gain4,
      cam->params.apcor.gain8);

 if (cam->cmd_queue & COMMAND_SETVLOFFSET)
  do_command(cam, CPIA_COMMAND_SetVLOffset,
      cam->params.vlOffset.gain1,
      cam->params.vlOffset.gain2,
      cam->params.vlOffset.gain4,
      cam->params.vlOffset.gain8);

 if (cam->cmd_queue & COMMAND_SETEXPOSURE) {
  do_command_extended(cam, CPIA_COMMAND_SetExposure,
        cam->params.exposure.gainMode,
        1,
        cam->params.exposure.compMode,
        cam->params.exposure.centreWeight,
        cam->params.exposure.gain,
        cam->params.exposure.fineExp,
        cam->params.exposure.coarseExpLo,
        cam->params.exposure.coarseExpHi,
        cam->params.exposure.redComp,
        cam->params.exposure.green1Comp,
        cam->params.exposure.green2Comp,
        cam->params.exposure.blueComp);
  if(cam->params.exposure.expMode != 1) {
   do_command_extended(cam, CPIA_COMMAND_SetExposure,
         0,
         cam->params.exposure.expMode,
         0, 0,
         cam->params.exposure.gain,
         cam->params.exposure.fineExp,
         cam->params.exposure.coarseExpLo,
         cam->params.exposure.coarseExpHi,
         0, 0, 0, 0);
  }
 }

 if (cam->cmd_queue & COMMAND_SETCOLOURBALANCE) {
  if (cam->params.colourBalance.balanceMode == 1) {
   do_command(cam, CPIA_COMMAND_SetColourBalance,
       1,
       cam->params.colourBalance.redGain,
       cam->params.colourBalance.greenGain,
       cam->params.colourBalance.blueGain);
   do_command(cam, CPIA_COMMAND_SetColourBalance,
       3, 0, 0, 0);
  }
  if (cam->params.colourBalance.balanceMode == 2) {
   do_command(cam, CPIA_COMMAND_SetColourBalance,
       2, 0, 0, 0);
  }
  if (cam->params.colourBalance.balanceMode == 3) {
   do_command(cam, CPIA_COMMAND_SetColourBalance,
       3, 0, 0, 0);
  }
 }

 if (cam->cmd_queue & COMMAND_SETCOMPRESSIONTARGET)
  do_command(cam, CPIA_COMMAND_SetCompressionTarget,
      cam->params.compressionTarget.frTargeting,
      cam->params.compressionTarget.targetFR,
      cam->params.compressionTarget.targetQ, 0);

 if (cam->cmd_queue & COMMAND_SETYUVTHRESH)
  do_command(cam, CPIA_COMMAND_SetYUVThresh,
      cam->params.yuvThreshold.yThreshold,
      cam->params.yuvThreshold.uvThreshold, 0, 0);

 if (cam->cmd_queue & COMMAND_SETCOMPRESSIONPARAMS)
  do_command_extended(cam, CPIA_COMMAND_SetCompressionParams,
       0, 0, 0, 0,
       cam->params.compressionParams.hysteresis,
       cam->params.compressionParams.threshMax,
       cam->params.compressionParams.smallStep,
       cam->params.compressionParams.largeStep,
       cam->params.compressionParams.decimationHysteresis,
       cam->params.compressionParams.frDiffStepThresh,
       cam->params.compressionParams.qDiffStepThresh,
       cam->params.compressionParams.decimationThreshMod);

 if (cam->cmd_queue & COMMAND_SETCOMPRESSION)
  do_command(cam, CPIA_COMMAND_SetCompression,
      cam->params.compression.mode,
      cam->params.compression.decimation, 0, 0);

 if (cam->cmd_queue & COMMAND_SETSENSORFPS)
  do_command(cam, CPIA_COMMAND_SetSensorFPS,
      cam->params.sensorFps.divisor,
      cam->params.sensorFps.baserate, 0, 0);

 if (cam->cmd_queue & COMMAND_SETFLICKERCTRL)
  do_command(cam, CPIA_COMMAND_SetFlickerCtrl,
      cam->params.flickerControl.flickerMode,
      cam->params.flickerControl.coarseJump,
      abs(cam->params.flickerControl.allowableOverExposure),
      0);

 if (cam->cmd_queue & COMMAND_SETECPTIMING)
  do_command(cam, CPIA_COMMAND_SetECPTiming,
      cam->params.ecpTiming, 0, 0, 0);

 if (cam->cmd_queue & COMMAND_PAUSE)
  do_command(cam, CPIA_COMMAND_EndStreamCap, 0, 0, 0, 0);

 if (cam->cmd_queue & COMMAND_RESUME)
  init_stream_cap(cam);

 if (cam->cmd_queue & COMMAND_SETLIGHTS && cam->params.qx3.qx3_detected)
   {
     int p1 = (cam->params.qx3.bottomlight == 0) << 1;
     int p2 = (cam->params.qx3.toplight == 0) << 3;
     do_command(cam, CPIA_COMMAND_WriteVCReg, 0x90, 0x8F, 0x50, 0);
     do_command(cam, CPIA_COMMAND_WriteMCPort, 2, 0, (p1|p2|0xE0), 0);
   }

 cam->cmd_queue = COMMAND_NONE;
 mutex_unlock(&cam->param_lock);
 return;
}
