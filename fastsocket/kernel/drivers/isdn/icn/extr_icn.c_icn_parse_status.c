
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef char u_char ;
typedef int ncmd ;
struct TYPE_17__ {int si1; int screen; int plan; void* si2; int eazmsn; int phone; } ;
struct TYPE_18__ {int num; TYPE_2__ setup; } ;
struct TYPE_19__ {int driver; int arg; void* command; TYPE_3__ parm; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_20__ {char* statstr; int action; void* command; } ;
typedef TYPE_5__ icn_stat ;
struct TYPE_16__ {int (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_21__ {int myid; int flags; TYPE_1__ interface; int lock; int * rcvidx; } ;
typedef TYPE_6__ icn_card ;


 int ICN_FLAGS_B1ACTIVE ;
 int ICN_FLAGS_B2ACTIVE ;
 void* ISDN_STAT_BHUP ;
 void* ISDN_STAT_DHUP ;
 int icn_free_queue (TYPE_6__*,int) ;
 TYPE_5__* icn_stat_table ;
 int memset (TYPE_4__*,int ,int) ;
 void* simple_strtoul (char*,int *,int) ;
 int snprintf (int ,int,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (int ,char*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;
 int stub4 (TYPE_4__*) ;
 int stub5 (TYPE_4__*) ;

__attribute__((used)) static void
icn_parse_status(u_char * status, int channel, icn_card * card)
{
 icn_stat *s = icn_stat_table;
 int action = -1;
 unsigned long flags;
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
  case 11:
   spin_lock_irqsave(&card->lock, flags);
   icn_free_queue(card,channel);
   card->rcvidx[channel] = 0;

   if (card->flags &
       ((channel)?ICN_FLAGS_B2ACTIVE:ICN_FLAGS_B1ACTIVE)) {

    isdn_ctrl ncmd;

    card->flags &= ~((channel)?
       ICN_FLAGS_B2ACTIVE:ICN_FLAGS_B1ACTIVE);

    memset(&ncmd, 0, sizeof(ncmd));

    ncmd.driver = card->myid;
    ncmd.arg = channel;
    ncmd.command = ISDN_STAT_BHUP;
    spin_unlock_irqrestore(&card->lock, flags);
    card->interface.statcallb(&cmd);
   } else
    spin_unlock_irqrestore(&card->lock, flags);
   break;
  case 1:
   spin_lock_irqsave(&card->lock, flags);
   icn_free_queue(card,channel);
   card->flags |= (channel) ?
       ICN_FLAGS_B2ACTIVE : ICN_FLAGS_B1ACTIVE;
   spin_unlock_irqrestore(&card->lock, flags);
   break;
  case 2:
   spin_lock_irqsave(&card->lock, flags);
   card->flags &= ~((channel) ?
    ICN_FLAGS_B2ACTIVE : ICN_FLAGS_B1ACTIVE);
   icn_free_queue(card, channel);
   card->rcvidx[channel] = 0;
   spin_unlock_irqrestore(&card->lock, flags);
   break;
  case 3:
   {
    char *t = status + 6;
    char *s = strchr(t, ',');

    *s++ = '\0';
    strlcpy(cmd.parm.setup.phone, t,
     sizeof(cmd.parm.setup.phone));
    s = strchr(t = s, ',');
    *s++ = '\0';
    if (!strlen(t))
     cmd.parm.setup.si1 = 0;
    else
     cmd.parm.setup.si1 =
         simple_strtoul(t, ((void*)0), 10);
    s = strchr(t = s, ',');
    *s++ = '\0';
    if (!strlen(t))
     cmd.parm.setup.si2 = 0;
    else
     cmd.parm.setup.si2 =
         simple_strtoul(t, ((void*)0), 10);
    strlcpy(cmd.parm.setup.eazmsn, s,
     sizeof(cmd.parm.setup.eazmsn));
   }
   cmd.parm.setup.plan = 0;
   cmd.parm.setup.screen = 0;
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
   spin_lock_irqsave(&card->lock, flags);
   card->flags &= ~ICN_FLAGS_B1ACTIVE;
   icn_free_queue(card, 0);
   card->rcvidx[0] = 0;
   spin_unlock_irqrestore(&card->lock, flags);
   cmd.arg = 0;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_DHUP;
   cmd.arg = 0;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_BHUP;
   spin_lock_irqsave(&card->lock, flags);
   card->flags &= ~ICN_FLAGS_B2ACTIVE;
   icn_free_queue(card, 1);
   card->rcvidx[1] = 0;
   spin_unlock_irqrestore(&card->lock, flags);
   cmd.arg = 1;
   cmd.driver = card->myid;
   card->interface.statcallb(&cmd);
   cmd.command = ISDN_STAT_DHUP;
   cmd.arg = 1;
   cmd.driver = card->myid;
   break;
 }
 card->interface.statcallb(&cmd);
 return;
}
