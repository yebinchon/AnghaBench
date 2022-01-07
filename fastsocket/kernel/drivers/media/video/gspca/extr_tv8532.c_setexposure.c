
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int exposure; } ;
struct gspca_dev {int dummy; } ;


 int EXPO_CHANGE ;
 int LATENT_CHANGE ;
 int R00_PART_CONTROL ;
 int R1C_AD_EXPOSE_TIMEL ;
 int reg_w1 (struct gspca_dev*,int ,int) ;
 int reg_w2 (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w2(gspca_dev, R1C_AD_EXPOSE_TIMEL, sd->exposure);
 reg_w1(gspca_dev, R00_PART_CONTROL, LATENT_CHANGE | EXPO_CHANGE);

}
