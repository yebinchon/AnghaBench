
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int VREG_GRP ;
 int rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030reg_read (int ,int ) ;

__attribute__((used)) static int twl4030reg_grp(struct regulator_dev *rdev)
{
 return twl4030reg_read(rdev_get_drvdata(rdev), VREG_GRP);
}
