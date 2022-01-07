
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int chip_read2 (struct CHIPSTATE*,int) ;
 int v4l2_info (struct v4l2_subdev*,char*,char*,int) ;

__attribute__((used)) static int tda9875_checkit(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int dic, rev;

 dic = chip_read2(chip, 254);
 rev = chip_read2(chip, 255);

 if (dic == 0 || dic == 2) {
  v4l2_info(sd, "found tda9875%s rev. %d.\n",
   dic == 0 ? "" : "A", rev);
  return 1;
 }
 return 0;
}
