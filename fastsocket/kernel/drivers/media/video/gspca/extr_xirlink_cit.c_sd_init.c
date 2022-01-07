
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
 int cit_init_ibm_netcam_pro (struct gspca_dev*) ;
 int cit_init_model0 (struct gspca_dev*) ;
 int sd_stop0 (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
  cit_init_model0(gspca_dev);
  sd_stop0(gspca_dev);
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 case 133:
  cit_init_ibm_netcam_pro(gspca_dev);
  sd_stop0(gspca_dev);
  break;
 }
 return 0;
}
