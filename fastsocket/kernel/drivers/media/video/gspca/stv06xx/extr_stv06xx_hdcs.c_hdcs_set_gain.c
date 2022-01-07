
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_V4L2 ;
 int PDEBUG (int ,char*,int) ;
 int hdcs_set_gains (struct sd*,int) ;

__attribute__((used)) static int hdcs_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 PDEBUG(D_V4L2, "Writing gain %d", val);
 return hdcs_set_gains((struct sd *) gspca_dev,
          val & 0xff);
}
