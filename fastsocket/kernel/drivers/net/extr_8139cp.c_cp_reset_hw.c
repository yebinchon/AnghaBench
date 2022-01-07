
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cp_private {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int Cmd ;
 int CmdReset ;
 int cpr8 (int ) ;
 int cpw8 (int ,int) ;
 int pr_err (char*,int ) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static void cp_reset_hw (struct cp_private *cp)
{
 unsigned work = 1000;

 cpw8(Cmd, CmdReset);

 while (work--) {
  if (!(cpr8(Cmd) & CmdReset))
   return;

  schedule_timeout_uninterruptible(10);
 }

 pr_err("%s: hardware reset timeout\n", cp->dev->name);
}
