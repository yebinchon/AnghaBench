
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int debug_flags; int async_busy; unsigned short async_channel; int hysdn_lock; int irq_queue; scalar_t__ async_len; int async_data; } ;
typedef TYPE_1__ hysdn_card ;


 int ERR_ASYNC_TIME ;
 int LOG_SCHED_ASYN ;
 int hysdn_addlog (TYPE_1__*,char*,...) ;
 int msleep_interruptible (int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,unsigned char*) ;
 scalar_t__ strlen (unsigned char*) ;

int
hysdn_tx_cfgline(hysdn_card *card, unsigned char *line, unsigned short chan)
{
 int cnt = 50;
 unsigned long flags;

 if (card->debug_flags & LOG_SCHED_ASYN)
  hysdn_addlog(card, "async tx-cfg chan=%d len=%d", chan, strlen(line) + 1);

 while (card->async_busy) {

  if (card->debug_flags & LOG_SCHED_ASYN)
   hysdn_addlog(card, "async tx-cfg delayed");

  msleep_interruptible(20);
  if (!--cnt)
   return (-ERR_ASYNC_TIME);
 }

 spin_lock_irqsave(&card->hysdn_lock, flags);
 strcpy(card->async_data, line);
 card->async_len = strlen(line) + 1;
 card->async_channel = chan;
 card->async_busy = 1;


 schedule_work(&card->irq_queue);
 spin_unlock_irqrestore(&card->hysdn_lock, flags);

 if (card->debug_flags & LOG_SCHED_ASYN)
  hysdn_addlog(card, "async tx-cfg data queued");

 cnt++;

 while (card->async_busy) {

  if (card->debug_flags & LOG_SCHED_ASYN)
   hysdn_addlog(card, "async tx-cfg waiting for tx-ready");

  msleep_interruptible(20);
  if (!--cnt)
   return (-ERR_ASYNC_TIME);
 }

 if (card->debug_flags & LOG_SCHED_ASYN)
  hysdn_addlog(card, "async tx-cfg data send");

 return (0);
}
