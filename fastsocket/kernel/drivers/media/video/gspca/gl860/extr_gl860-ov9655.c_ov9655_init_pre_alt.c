
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; int hue; } ;
struct sd {TYPE_1__ vold; } ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int ov9655_init_post_alt (struct gspca_dev*) ;
 int tbl_commmon ;

__attribute__((used)) static int ov9655_init_pre_alt(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->vold.brightness = -1;
 sd->vold.hue = -1;

 fetch_validx(gspca_dev, tbl_commmon, ARRAY_SIZE(tbl_commmon));

 ov9655_init_post_alt(gspca_dev);

 return 0;
}
