
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int (* write ) (struct lis3lv02d*,int ,int) ;} ;


 int CTRL_REG1 ;
 int stub1 (struct lis3lv02d*,int ,int) ;

void lis3lv02d_poweroff(struct lis3lv02d *lis3)
{

 lis3->write(lis3, CTRL_REG1, 0x00);
}
