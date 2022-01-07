
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int (* dev_init_at_startup ) (struct gspca_dev*) ;} ;
struct gspca_dev {int dummy; } ;


 int stub1 (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return sd->dev_init_at_startup(gspca_dev);
}
