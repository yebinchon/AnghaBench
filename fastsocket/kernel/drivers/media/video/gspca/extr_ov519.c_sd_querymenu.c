
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; scalar_t__ name; int index; } ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;


 int EINVAL ;
 int SEN_OV7670 ;

 int strcpy (char*,char*) ;

__attribute__((used)) static int sd_querymenu(struct gspca_dev *gspca_dev,
   struct v4l2_querymenu *menu)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (menu->id) {
 case 128:
  switch (menu->index) {
  case 0:
   strcpy((char *) menu->name, "NoFliker");
   return 0;
  case 1:
   strcpy((char *) menu->name, "50 Hz");
   return 0;
  case 2:
   strcpy((char *) menu->name, "60 Hz");
   return 0;
  case 3:
   if (sd->sensor != SEN_OV7670)
    return -EINVAL;

   strcpy((char *) menu->name, "Automatic");
   return 0;
  }
  break;
 }
 return -EINVAL;
}
