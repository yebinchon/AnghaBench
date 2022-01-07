
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* board_resume_finish ) (int ) ;} ;


 int iounmap (int ) ;
 int mbar ;
 TYPE_1__ mpc52xx_suspend ;
 int stub1 (int ) ;

void mpc52xx_pm_finish(void)
{

 if (mpc52xx_suspend.board_resume_finish)
  mpc52xx_suspend.board_resume_finish(mbar);

 iounmap(mbar);
}
