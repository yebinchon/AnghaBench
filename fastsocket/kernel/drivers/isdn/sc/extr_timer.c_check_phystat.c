
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int stat_timer; scalar_t__ nphystat; scalar_t__ phystat; int devicename; } ;


 int CEPID ;
 scalar_t__ CHECKSTAT_TIME ;
 int ISDN_STAT_RUN ;
 int ISDN_STAT_STOP ;
 int ceReqClass2 ;
 int ceReqPhyStatus ;
 int ceReqTypePhy ;
 int indicate_status (int,int ,int ,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,...) ;
 int pr_info (char*,int ) ;
 TYPE_1__** sc_adapter ;
 int sendmessage (int,int ,int ,int ,int ,int ,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void check_phystat(unsigned long data)
{
 unsigned long flags;
 int card = (unsigned int) data;

 pr_debug("%s: Checking status...\n", sc_adapter[card]->devicename);




 if (sc_adapter[card]->nphystat && !sc_adapter[card]->phystat) {
  pr_debug("PhyStat transition to RUN\n");
  pr_info("%s: Switch contacted, transmitter enabled\n",
   sc_adapter[card]->devicename);
  indicate_status(card, ISDN_STAT_RUN, 0, ((void*)0));
 }
 else if (!sc_adapter[card]->nphystat && sc_adapter[card]->phystat) {
  pr_debug("PhyStat transition to STOP\n");
  pr_info("%s: Switch connection lost, transmitter disabled\n",
   sc_adapter[card]->devicename);

  indicate_status(card, ISDN_STAT_STOP, 0, ((void*)0));
 }

 sc_adapter[card]->phystat = sc_adapter[card]->nphystat;


 spin_lock_irqsave(&sc_adapter[card]->lock, flags);
 mod_timer(&sc_adapter[card]->stat_timer, jiffies+CHECKSTAT_TIME);
 spin_unlock_irqrestore(&sc_adapter[card]->lock, flags);


 sendmessage(card, CEPID,ceReqTypePhy,ceReqClass2,
  ceReqPhyStatus,0,0,((void*)0));
}
