
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; size_t index; scalar_t__ name; } ;
struct gspca_dev {int dummy; } ;


 size_t ARRAY_SIZE (char const**) ;
 int EINVAL ;

 int strcpy (char*,char const*) ;

__attribute__((used)) static int sd_querymenu(struct gspca_dev *gspca_dev,
   struct v4l2_querymenu *menu)
{
 static const char *freq_nm[3] = {"NoFliker", "50 Hz", "60 Hz"};

 switch (menu->id) {
 case 128:
  if (menu->index >= ARRAY_SIZE(freq_nm))
   break;
  strcpy((char *) menu->name, freq_nm[menu->index]);
  return 0;
 }
 return -EINVAL;
}
