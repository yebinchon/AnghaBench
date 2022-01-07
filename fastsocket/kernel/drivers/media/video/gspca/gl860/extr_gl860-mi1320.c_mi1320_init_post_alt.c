
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int mi1320_camera_settings (struct gspca_dev*) ;

__attribute__((used)) static int mi1320_init_post_alt(struct gspca_dev *gspca_dev)
{
 mi1320_camera_settings(gspca_dev);

 return 0;
}
