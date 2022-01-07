
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_18__ {char* statstr; int action; void* command; } ;
typedef TYPE_4__ isdnloop_stat ;
struct TYPE_17__ {int (* statcallb ) (TYPE_6__*) ;} ;
struct TYPE_19__ {int myid; TYPE_3__ interface; int flags; } ;
typedef TYPE_5__ isdnloop_card ;
struct TYPE_15__ {int si1; int screen; int plan; int si2; int eazmsn; int phone; } ;
struct TYPE_16__ {int num; TYPE_1__ setup; } ;
struct TYPE_20__ {int driver; int arg; void* command; TYPE_2__ parm; } ;
typedef TYPE_6__ isdn_ctrl ;


 int ISDNLOOP_FLAGS_B1ACTIVE ;
 int ISDNLOOP_FLAGS_B2ACTIVE ;
 void* ISDN_STAT_BHUP ;
 void* ISDN_STAT_DHUP ;
 int isdnloop_free_queue (TYPE_5__*,int) ;
 int isdnloop_parse_setup (char*,TYPE_6__*) ;
 TYPE_4__* isdnloop_stat_table ;
 scalar_t__ simple_strtoul (char*,int *,int) ;
 int snprintf (int ,int,char*,...) ;
 int sprintf (int ,char*,int) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*) ;
 int stub3 (TYPE_6__*) ;
 int stub4 (TYPE_6__*) ;

__attribute__((used)) static void
isdnloop_parse_status(u_char * status, int channel, isdnloop_card * card)
{
 isdnloop_stat *s = isdnloop_stat_table;
 int action = -1;
 isdn_ctrl cmd;

 while (s->statstr) {
  if (!strncmp(status, s->statstr, strlen(s->statstr))) {
   cmd.command = s->command;
   action = s->action;
   break;
  }
  s++;
 }
 if (action == -1)
  return;
 cmd.driver = card->myid;
 cmd.arg = channel;
 switch (action) {
  case 1:

   card->flags |= (channel) ?
       ISDNLOOP_FLAGS_B2ACTIVE : ISDNLOOP_FLAGS_B1ACTIVE;
   break;
  case 2:

   card->flags &= ~((channel) ?
      ISDNLOOP_FLAGS_B2ACTIVE : ISDNLOOP_FLAGS_B1ACTIVE);
   isdnloop_free_queue(card, channel);
   break;
  case 3:

   isdnloop_parse_setup(status + 6, &cmd);
   break;
  case 4:

   sprintf(cmd.parm.setup.phone, "LEASED%d", card->myid);
   sprintf(cmd.parm.setup.eazmsn, "%d", channel + 1);
   cmd.parm.setup.si1 = 7;
   cmd.parm.setup.si2 = 0;
   cmd.parm.setup.plan = 0;
   cmd.parm.setup.screen = 0;
   break;
  case 5:

   strlcpy(cmd.parm.num, status + 3, sizeof(cmd.parm.num));
   break;
  case 6:

   snprintf(cmd.parm.num, sizeof(cmd.parm.num), "%d",
        (int) simple_strtoul(status + 7, ((void*)0), 16));
   break;
  case 7:

   status += 3;
   if (strlen(status) == 4)
    snprintf(cmd.parm.num, sizeof(cmd.parm.num), "%s%c%c",
         status + 2, *status, *(status + 1));
   else
    strlcpy(cmd.parm.num, status + 1, sizeof(cmd.parm.num));
   break;
  case 8:

   card->flags &= ~ISDNLOOP_FLAGS_B1ACTIVE;
   isdnloop_free_queue(card, 0);
   cmd.arg = 0;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_DHUP;
   cmd.arg = 0;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_BHUP;
   card->flags &= ~ISDNLOOP_FLAGS_B2ACTIVE;
   isdnloop_free_queue(card, 1);
   cmd.arg = 1;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_DHUP;
   cmd.arg = 1;
   cmd.driver = card->myid;
   break;
 }
 card->interface.statcallb(&cmd);
}
