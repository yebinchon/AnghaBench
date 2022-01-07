
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gamma; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int setgamma (struct gspca_dev*) ;

__attribute__((used)) static int sd_setgamma(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->gamma = val;
 if (gspca_dev->streaming)
  setgamma(gspca_dev);
 return 0;
}
