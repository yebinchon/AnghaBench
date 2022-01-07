
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int TDA9874A_DIC ;
 int TDA9874A_SIC ;
 int chip_read2 (struct CHIPSTATE*,int ) ;
 int debug ;
 int tda9874a_dic ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 int v4l2_info (struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int tda9874a_checkit(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int dic,sic;

 if(-1 == (dic = chip_read2(chip,TDA9874A_DIC)))
  return 0;
 if(-1 == (sic = chip_read2(chip,TDA9874A_SIC)))
  return 0;

 v4l2_dbg(1, debug, sd, "tda9874a_checkit(): DIC=0x%X, SIC=0x%X.\n", dic, sic);

 if((dic == 0x11)||(dic == 0x07)) {
  v4l2_info(sd, "found tda9874%s.\n", (dic == 0x11) ? "a" : "h");
  tda9874a_dic = dic;
  return 1;
 }
 return 0;
}
