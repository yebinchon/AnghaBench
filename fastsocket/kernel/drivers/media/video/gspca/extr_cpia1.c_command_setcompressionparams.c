
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int decimationThreshMod; int qDiffStepThresh; int frDiffStepThresh; int decimationHysteresis; int largeStep; int smallStep; int threshMax; int hysteresis; } ;
struct TYPE_4__ {TYPE_1__ compressionParams; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetCompressionParams ;
 int do_command_extended (struct gspca_dev*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setcompressionparams(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return do_command_extended(gspca_dev,
       CPIA_COMMAND_SetCompressionParams,
       0, 0, 0, 0,
       sd->params.compressionParams.hysteresis,
       sd->params.compressionParams.threshMax,
       sd->params.compressionParams.smallStep,
       sd->params.compressionParams.largeStep,
       sd->params.compressionParams.decimationHysteresis,
       sd->params.compressionParams.frDiffStepThresh,
       sd->params.compressionParams.qDiffStepThresh,
       sd->params.compressionParams.decimationThreshMod);
}
