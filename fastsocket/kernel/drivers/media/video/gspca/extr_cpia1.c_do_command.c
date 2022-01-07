
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_14__ {int button; int cradled; int qx3_detected; } ;
struct TYPE_13__ {int gain; int fineExp; int coarseExpLo; int coarseExpHi; int redComp; int green1Comp; int green2Comp; int blueComp; } ;
struct TYPE_12__ {int redGain; int greenGain; int blueGain; } ;
struct TYPE_11__ {int brightness; int contrast; int saturation; } ;
struct TYPE_10__ {int vpVersion; int vpRevision; int cameraHeadID; } ;
struct TYPE_17__ {int systemState; int grabState; int streamState; int fatalError; int cmdError; int debugFlags; int vpStatus; int errorCode; } ;
struct TYPE_16__ {int vendor; int product; int deviceRevision; } ;
struct TYPE_15__ {int firmwareVersion; int firmwareRevision; int vcVersion; int vcRevision; } ;
struct TYPE_18__ {TYPE_5__ qx3; TYPE_4__ exposure; TYPE_3__ colourBalance; TYPE_2__ colourParams; TYPE_1__ vpVersion; TYPE_8__ status; TYPE_7__ pnpID; TYPE_6__ version; } ;
struct sd {TYPE_9__ params; } ;
struct gspca_dev {int* usb_buf; } ;
 int CPIA_COMMAND_WriteMCPort ;
 int cpia_usb_transferCmd (struct gspca_dev*,int*) ;

__attribute__((used)) static int do_command(struct gspca_dev *gspca_dev, u16 command,
        u8 a, u8 b, u8 c, u8 d)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret, datasize;
 u8 cmd[8];

 switch (command) {
 case 136:
 case 131:
 case 135:
 case 130:
 case 133:
 case 134:
 case 132:
  datasize = 8;
  break;
 case 129:
 case 128:
  datasize = 4;
  break;
 default:
  datasize = 0;
  break;
 }

 cmd[0] = command >> 8;
 cmd[1] = command & 0xff;
 cmd[2] = a;
 cmd[3] = b;
 cmd[4] = c;
 cmd[5] = d;
 cmd[6] = datasize;
 cmd[7] = 0;

 ret = cpia_usb_transferCmd(gspca_dev, cmd);
 if (ret)
  return ret;

 switch (command) {
 case 136:
  sd->params.version.firmwareVersion = gspca_dev->usb_buf[0];
  sd->params.version.firmwareRevision = gspca_dev->usb_buf[1];
  sd->params.version.vcVersion = gspca_dev->usb_buf[2];
  sd->params.version.vcRevision = gspca_dev->usb_buf[3];
  break;
 case 131:
  sd->params.pnpID.vendor =
   gspca_dev->usb_buf[0] | (gspca_dev->usb_buf[1] << 8);
  sd->params.pnpID.product =
   gspca_dev->usb_buf[2] | (gspca_dev->usb_buf[3] << 8);
  sd->params.pnpID.deviceRevision =
   gspca_dev->usb_buf[4] | (gspca_dev->usb_buf[5] << 8);
  break;
 case 135:
  sd->params.status.systemState = gspca_dev->usb_buf[0];
  sd->params.status.grabState = gspca_dev->usb_buf[1];
  sd->params.status.streamState = gspca_dev->usb_buf[2];
  sd->params.status.fatalError = gspca_dev->usb_buf[3];
  sd->params.status.cmdError = gspca_dev->usb_buf[4];
  sd->params.status.debugFlags = gspca_dev->usb_buf[5];
  sd->params.status.vpStatus = gspca_dev->usb_buf[6];
  sd->params.status.errorCode = gspca_dev->usb_buf[7];
  break;
 case 130:
  sd->params.vpVersion.vpVersion = gspca_dev->usb_buf[0];
  sd->params.vpVersion.vpRevision = gspca_dev->usb_buf[1];
  sd->params.vpVersion.cameraHeadID =
   gspca_dev->usb_buf[2] | (gspca_dev->usb_buf[3] << 8);
  break;
 case 133:
  sd->params.colourParams.brightness = gspca_dev->usb_buf[0];
  sd->params.colourParams.contrast = gspca_dev->usb_buf[1];
  sd->params.colourParams.saturation = gspca_dev->usb_buf[2];
  break;
 case 134:
  sd->params.colourBalance.redGain = gspca_dev->usb_buf[0];
  sd->params.colourBalance.greenGain = gspca_dev->usb_buf[1];
  sd->params.colourBalance.blueGain = gspca_dev->usb_buf[2];
  break;
 case 132:
  sd->params.exposure.gain = gspca_dev->usb_buf[0];
  sd->params.exposure.fineExp = gspca_dev->usb_buf[1];
  sd->params.exposure.coarseExpLo = gspca_dev->usb_buf[2];
  sd->params.exposure.coarseExpHi = gspca_dev->usb_buf[3];
  sd->params.exposure.redComp = gspca_dev->usb_buf[4];
  sd->params.exposure.green1Comp = gspca_dev->usb_buf[5];
  sd->params.exposure.green2Comp = gspca_dev->usb_buf[6];
  sd->params.exposure.blueComp = gspca_dev->usb_buf[7];
  break;

 case 129:
  if (!sd->params.qx3.qx3_detected)
   break;

  sd->params.qx3.button = ((gspca_dev->usb_buf[1] & 0x02) == 0);
  if (sd->params.qx3.button) {

   do_command(gspca_dev, CPIA_COMMAND_WriteMCPort,
       3, 0xdf, 0xdf, 0);
   do_command(gspca_dev, CPIA_COMMAND_WriteMCPort,
       3, 0xff, 0xff, 0);
  }


  sd->params.qx3.cradled = ((gspca_dev->usb_buf[2] & 0x40) == 0);
  break;
 }

 return 0;
}
