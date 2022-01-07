
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; size_t index; scalar_t__ name; } ;
struct gspca_dev {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;


 int * effects_control ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int sd_querymenu(struct gspca_dev *gspca_dev,
   struct v4l2_querymenu *menu)
{
 switch (menu->id) {
 case 128:
  switch (menu->index) {
  case 1:
   strcpy((char *) menu->name, "50 Hz");
   return 0;
  case 2:
   strcpy((char *) menu->name, "60 Hz");
   return 0;
  }
  break;
 case 129:
  if ((unsigned) menu->index < ARRAY_SIZE(effects_control)) {
   strncpy((char *) menu->name,
    effects_control[menu->index],
    sizeof menu->name);
   return 0;
  }
  break;
 }
 return -EINVAL;
}
