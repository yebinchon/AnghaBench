
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* num; } ;
struct TYPE_5__ {int driver; int arg; TYPE_1__ parm; int command; } ;
typedef TYPE_2__ isdn_ctrl ;


 int ISDN_CMD_SETEAZ ;
 int isdn_command (TYPE_2__*) ;

void
isdn_all_eaz(int di, int ch)
{
 isdn_ctrl cmd;

 if (di < 0)
  return;
 cmd.driver = di;
 cmd.arg = ch;
 cmd.command = ISDN_CMD_SETEAZ;
 cmd.parm.num[0] = '\0';
 isdn_command(&cmd);
}
