
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; int x; int y; } ;
struct TYPE_9__ {int colStart; int rowStart; int colEnd; int rowEnd; } ;
struct TYPE_8__ {int videoSize; } ;
struct TYPE_10__ {int streamStartLine; TYPE_4__ roi; TYPE_3__ format; } ;
struct TYPE_7__ {int width; int height; } ;
struct cam_data {int video_size; TYPE_1__ vc; TYPE_5__ params; TYPE_2__ vw; } ;


 int LOG (char*,int) ;
__attribute__((used)) static void set_vw_size(struct cam_data *cam)
{




 switch(cam->video_size) {
 case 131:
  cam->vw.width = 352;
  cam->vw.height = 288;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=0;
  cam->params.roi.rowStart=0;
  cam->params.streamStartLine = 120;
  break;
 case 128:
  cam->vw.width = 320;
  cam->vw.height = 240;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=2;
  cam->params.roi.rowStart=6;
  cam->params.streamStartLine = 120;
  break;
 case 135:
  cam->vw.width = 288;
  cam->vw.height = 216;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=4;
  cam->params.roi.rowStart=9;
  cam->params.streamStartLine = 120;
  break;
 case 136:
  cam->vw.width = 256;
  cam->vw.height = 192;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=6;
  cam->params.roi.rowStart=12;
  cam->params.streamStartLine = 120;
  break;
 case 137:
  cam->vw.width = 224;
  cam->vw.height = 168;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=8;
  cam->params.roi.rowStart=15;
  cam->params.streamStartLine = 120;
  break;
 case 138:
  cam->vw.width = 192;
  cam->vw.height = 144;
  cam->params.format.videoSize=131;
  cam->params.roi.colStart=10;
  cam->params.roi.rowStart=18;
  cam->params.streamStartLine = 120;
  break;
 case 130:
  cam->vw.width = 176;
  cam->vw.height = 144;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=0;
  cam->params.roi.rowStart=0;
  cam->params.streamStartLine = 60;
  break;
 case 129:
  cam->vw.width = 160;
  cam->vw.height = 120;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=1;
  cam->params.roi.rowStart=3;
  cam->params.streamStartLine = 60;
  break;
 case 139:
  cam->vw.width = 128;
  cam->vw.height = 96;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=3;
  cam->params.roi.rowStart=6;
  cam->params.streamStartLine = 60;
  break;
 case 132:
  cam->vw.width = 88;
  cam->vw.height = 72;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=5;
  cam->params.roi.rowStart=9;
  cam->params.streamStartLine = 60;
  break;
 case 133:
  cam->vw.width = 64;
  cam->vw.height = 48;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=7;
  cam->params.roi.rowStart=12;
  cam->params.streamStartLine = 60;
  break;
 case 134:
  cam->vw.width = 48;
  cam->vw.height = 48;
  cam->params.format.videoSize=130;
  cam->params.roi.colStart=8;
  cam->params.roi.rowStart=6;
  cam->params.streamStartLine = 60;
  break;
 default:
  LOG("bad videosize value: %d\n", cam->video_size);
  return;
 }

 if(cam->vc.width == 0)
  cam->vc.width = cam->vw.width;
 if(cam->vc.height == 0)
  cam->vc.height = cam->vw.height;

 cam->params.roi.colStart += cam->vc.x >> 3;
 cam->params.roi.colEnd = cam->params.roi.colStart +
     (cam->vc.width >> 3);
 cam->params.roi.rowStart += cam->vc.y >> 2;
 cam->params.roi.rowEnd = cam->params.roi.rowStart +
     (cam->vc.height >> 2);

 return;
}
