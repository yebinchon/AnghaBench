
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {void* nctrls; void* ctrls; } ;
struct TYPE_6__ {void* nmodes; void* cam_mode; } ;
struct TYPE_7__ {TYPE_1__ cam; } ;
struct sd {scalar_t__ bridge; struct hdcs* sensor_priv; TYPE_3__ desc; TYPE_2__ gspca_dev; } ;
struct TYPE_10__ {int cto; int cpo; int rs; int er; } ;
struct TYPE_9__ {int left; int top; int border; int height; int width; } ;
struct hdcs {int psmp; TYPE_5__ exp; TYPE_4__ array; } ;


 void* ARRAY_SIZE (void*) ;
 scalar_t__ BRIDGE_STV602 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HDCS_1X00_DEF_HEIGHT ;
 int HDCS_1X00_DEF_WIDTH ;
 int HDCS_IDENT ;
 void* hdcs1x00_ctrl ;
 void* hdcs1x00_mode ;
 int info (char*) ;
 struct hdcs* kmalloc (int,int ) ;
 int stv06xx_read_sensor (struct sd*,int ,int*) ;

__attribute__((used)) static int hdcs_probe_1x00(struct sd *sd)
{
 struct hdcs *hdcs;
 u16 sensor;
 int ret;

 ret = stv06xx_read_sensor(sd, HDCS_IDENT, &sensor);
 if (ret < 0 || sensor != 0x08)
  return -ENODEV;

 info("HDCS-1000/1100 sensor detected");

 sd->gspca_dev.cam.cam_mode = hdcs1x00_mode;
 sd->gspca_dev.cam.nmodes = ARRAY_SIZE(hdcs1x00_mode);
 sd->desc.ctrls = hdcs1x00_ctrl;
 sd->desc.nctrls = ARRAY_SIZE(hdcs1x00_ctrl);

 hdcs = kmalloc(sizeof(struct hdcs), GFP_KERNEL);
 if (!hdcs)
  return -ENOMEM;

 hdcs->array.left = 8;
 hdcs->array.top = 8;
 hdcs->array.width = HDCS_1X00_DEF_WIDTH;
 hdcs->array.height = HDCS_1X00_DEF_HEIGHT;
 hdcs->array.border = 4;

 hdcs->exp.cto = 4;
 hdcs->exp.cpo = 2;
 hdcs->exp.rs = 186;
 hdcs->exp.er = 100;
 hdcs->psmp = (sd->bridge == BRIDGE_STV602) ? 20 : 5;

 sd->sensor_priv = hdcs;

 return 0;
}
