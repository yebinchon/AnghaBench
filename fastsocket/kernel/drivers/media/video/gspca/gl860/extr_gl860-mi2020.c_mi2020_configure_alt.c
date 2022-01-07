
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int alt; scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef size_t s32 ;
struct TYPE_3__ {size_t priv; } ;







__attribute__((used)) static int mi2020_configure_alt(struct gspca_dev *gspca_dev)
{
 s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;

 switch (reso) {
 case 129:
  gspca_dev->alt = 3 + 1;
  break;

 case 128:
 case 131:
 case 130:
  gspca_dev->alt = 1 + 1;
  break;
 }
 return 0;
}
