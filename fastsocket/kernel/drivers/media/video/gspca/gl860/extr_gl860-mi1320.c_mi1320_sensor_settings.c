
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef size_t s32 ;
struct TYPE_3__ {size_t priv; } ;


 int ARRAY_SIZE (int ) ;


 int ctrl_out (struct gspca_dev*,int,int,int,int,int,int *) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int ** tbl_1280 ;
 int ** tbl_640 ;
 int ** tbl_800 ;
 int tbl_sensor_settings_1280 ;
 int tbl_sensor_settings_640 ;
 int tbl_sensor_settings_800 ;
 int tbl_sensor_settings_common ;

__attribute__((used)) static int mi1320_sensor_settings(struct gspca_dev *gspca_dev)
{
 s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;

 ctrl_out(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, ((void*)0));

 fetch_validx(gspca_dev, tbl_sensor_settings_common,
    ARRAY_SIZE(tbl_sensor_settings_common));

 switch (reso) {
 case 129:
  fetch_validx(gspca_dev, tbl_sensor_settings_1280,
     ARRAY_SIZE(tbl_sensor_settings_1280));
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 64, tbl_1280[0]);
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_1280[1]);
  ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_1280[2]);
  break;

 case 128:
  fetch_validx(gspca_dev, tbl_sensor_settings_800,
     ARRAY_SIZE(tbl_sensor_settings_800));
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 64, tbl_800[0]);
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_800[1]);
  ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_800[2]);
  break;

 default:
  fetch_validx(gspca_dev, tbl_sensor_settings_640,
     ARRAY_SIZE(tbl_sensor_settings_640));
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 60, tbl_640[0]);
  ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_640[1]);
  ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_640[2]);
  break;
 }
 return 0;
}
