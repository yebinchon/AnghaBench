
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 size_t AUTOGAIN ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 autoval;

 if (sd->ctrls[AUTOGAIN].val)
  autoval = 0x42;
 else
  autoval = 0x02;
 reg_w(gspca_dev, autoval, 0x0180);
}
