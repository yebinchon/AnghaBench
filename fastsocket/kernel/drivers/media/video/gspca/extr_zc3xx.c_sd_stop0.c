
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;
struct gspca_dev {int present; } ;


 int send_unknown (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!gspca_dev->present)
  return;
 send_unknown(gspca_dev, sd->sensor);
}
