
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ do_ctrl; } ;
struct TYPE_2__ {int bulk_nurbs; int bulk_size; } ;
struct gspca_dev {int width; int height; TYPE_1__ cam; } ;



__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->cam.bulk_nurbs = 1;
 sd->do_ctrl = 0;
 gspca_dev->cam.bulk_size = gspca_dev->width * gspca_dev->height + 8;
 return 0;
}
