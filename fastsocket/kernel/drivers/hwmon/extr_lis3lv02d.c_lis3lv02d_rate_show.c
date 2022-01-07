
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ whoami; int (* read ) (TYPE_1__*,int ,int*) ;} ;


 int CTRL1_DF0 ;
 int CTRL1_DF1 ;
 int CTRL1_DR ;
 int CTRL_REG1 ;
 scalar_t__ LIS_DOUBLE_ID ;
 int* lis3_12_rates ;
 int* lis3_8_rates ;
 TYPE_1__ lis3_dev ;
 int sprintf (char*,char*,int) ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static ssize_t lis3lv02d_rate_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 u8 ctrl;
 int val;

 lis3_dev.read(&lis3_dev, CTRL_REG1, &ctrl);

 if (lis3_dev.whoami == LIS_DOUBLE_ID)
  val = lis3_12_rates[(ctrl & (CTRL1_DF0 | CTRL1_DF1)) >> 4];
 else
  val = lis3_8_rates[(ctrl & CTRL1_DR) >> 7];

 return sprintf(buf, "%d\n", val);
}
