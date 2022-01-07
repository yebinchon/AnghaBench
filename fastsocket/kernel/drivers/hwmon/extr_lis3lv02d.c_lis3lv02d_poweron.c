
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {scalar_t__ whoami; int (* write ) (struct lis3lv02d*,int ,int ) ;int (* read ) (struct lis3lv02d*,int ,int *) ;int (* init ) (struct lis3lv02d*) ;} ;


 int CTRL2_BDU ;
 int CTRL_REG2 ;
 scalar_t__ LIS_DOUBLE_ID ;
 int stub1 (struct lis3lv02d*) ;
 int stub2 (struct lis3lv02d*,int ,int *) ;
 int stub3 (struct lis3lv02d*,int ,int ) ;

void lis3lv02d_poweron(struct lis3lv02d *lis3)
{
 u8 reg;

 lis3->init(lis3);






 if (lis3->whoami == LIS_DOUBLE_ID) {
  lis3->read(lis3, CTRL_REG2, &reg);
  reg |= CTRL2_BDU;
  lis3->write(lis3, CTRL_REG2, reg);
 }
}
