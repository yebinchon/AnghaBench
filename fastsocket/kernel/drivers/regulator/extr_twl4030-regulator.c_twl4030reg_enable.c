
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int P1_GRP ;
 int VREG_GRP ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030reg_read (struct twlreg_info*,int ) ;
 int twl4030reg_write (struct twlreg_info*,int ,int) ;

__attribute__((used)) static int twl4030reg_enable(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int grp;

 grp = twl4030reg_read(info, VREG_GRP);
 if (grp < 0)
  return grp;

 grp |= P1_GRP;
 return twl4030reg_write(info, VREG_GRP, grp);
}
