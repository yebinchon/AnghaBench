
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {void (* dev_post_unset_alt ) (struct gspca_dev*) ;} ;
struct gspca_dev {int dummy; } ;


 void stub1 (struct gspca_dev*) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return sd->dev_post_unset_alt(gspca_dev);
}
