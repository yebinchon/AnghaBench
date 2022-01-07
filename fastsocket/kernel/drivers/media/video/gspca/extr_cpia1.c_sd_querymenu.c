
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; scalar_t__ name; int index; } ;
struct gspca_dev {int dummy; } ;




 int EINVAL ;


 int strcpy (char*,char*) ;

__attribute__((used)) static int sd_querymenu(struct gspca_dev *gspca_dev,
   struct v4l2_querymenu *menu)
{
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
  }
  break;
 case 129:
  switch (menu->index) {
  case 130:
   strcpy((char *) menu->name, "Quality");
   return 0;
  case 131:
   strcpy((char *) menu->name, "Framerate");
   return 0;
  }
  break;
 }
 return -EINVAL;
}
