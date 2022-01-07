
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_12__ {int cstat; int dstat; int cpa; } ;
struct TYPE_13__ {TYPE_4__ cmd; } ;
struct irb {TYPE_5__ scsw; int * ecw; } ;
struct TYPE_9__ {int rx_errors; } ;
struct claw_privbk {struct chbk* channel; TYPE_1__ stats; struct claw_env* p_env; } ;
struct claw_env {int adapter_name; int host_name; } ;
struct TYPE_15__ {unsigned long data; int expires; void* function; } ;
struct chbk {int last_dstat; int claw_state; int tasklet; int flag_a; int IO_active; TYPE_6__* irb; TYPE_7__ timer; int flag; int wait; int devno; scalar_t__ ndev; struct ccw_device* cdev; } ;
struct ccw_device {int dev; } ;
struct TYPE_10__ {int stctl; int dstat; int cstat; } ;
struct TYPE_11__ {TYPE_2__ cmd; } ;
struct TYPE_14__ {int* ecw; TYPE_3__ scsw; } ;


 int CLAW_BH_ACTIVE ;
 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int ) ;
 int CLAW_READ ;




 int CLAW_WRITE ;
 int DEV_STAT_UNIT_CHECK ;
 int DEV_STAT_UNIT_EXCEP ;
 int HZ ;
 int LOCK_NO ;
 size_t READ ;
 int SCHN_STAT_PCI ;
 int SCSW_STCTL_ALERT_STATUS ;
 int SCSW_STCTL_SEC_STATUS ;
 int SCSW_STCTL_STATUS_PEND ;
 int SYSTEM_VALIDATE_REQUEST ;
 int TB_RETRY ;
 int TB_TX ;
 size_t WRITE ;
 int add_timer (TYPE_7__*) ;
 int ccw_check_unit_check (struct chbk*,int ) ;
 int claw_clear_busy (struct net_device*) ;
 int claw_clearbit_busy (int ,struct net_device*) ;
 int claw_send_control (struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int claw_strt_read (struct net_device*,int ) ;
 int claw_test_and_setbit_busy (int ,struct net_device*) ;
 int claw_write_next (struct chbk*) ;
 scalar_t__ claw_write_retry ;
 int clear_bit (int ,void*) ;
 struct claw_privbk* dev_get_drvdata (int *) ;
 int dev_info (int *,char*,int ,...) ;
 int dev_warn (int *,char*,...) ;
 int init_timer (TYPE_7__*) ;
 int jiffies ;
 int memcpy (TYPE_6__*,struct irb*,int) ;
 int tasklet_schedule (int *) ;
 int test_and_set_bit (int ,void*) ;
 int trace ;
 int wake_up (int *) ;

__attribute__((used)) static void
claw_irq_handler(struct ccw_device *cdev,
 unsigned long intparm, struct irb *irb)
{
        struct chbk *p_ch = ((void*)0);
        struct claw_privbk *privptr = ((void*)0);
        struct net_device *dev = ((void*)0);
        struct claw_env *p_env;
        struct chbk *p_ch_r=((void*)0);

 CLAW_DBF_TEXT(4, trace, "clawirq");

 privptr = dev_get_drvdata(&cdev->dev);
 if (!privptr) {
  dev_warn(&cdev->dev, "An uninitialized CLAW device received an"
   " IRQ, c-%02x d-%02x\n",
   irb->scsw.cmd.cstat, irb->scsw.cmd.dstat);
  CLAW_DBF_TEXT(2, trace, "badirq");
                return;
        }


 if (privptr->channel[READ].cdev == cdev)
  p_ch = &privptr->channel[READ];
 else if (privptr->channel[WRITE].cdev == cdev)
  p_ch = &privptr->channel[WRITE];
 else {
  dev_warn(&cdev->dev, "The device is not a CLAW device\n");
  CLAW_DBF_TEXT(2, trace, "badchan");
  return;
 }
 CLAW_DBF_TEXT_(4, trace, "IRQCH=%d", p_ch->flag);

 dev = (struct net_device *) (p_ch->ndev);
        p_env=privptr->p_env;


 memcpy(p_ch->irb, irb, sizeof(struct irb));


 if (irb->scsw.cmd.cstat && !(irb->scsw.cmd.cstat & SCHN_STAT_PCI)) {
  dev_info(&cdev->dev,
   "%s: subchannel check for device: %04x -"
   " Sch Stat %02x  Dev Stat %02x CPA - %04x\n",
                        dev->name, p_ch->devno,
   irb->scsw.cmd.cstat, irb->scsw.cmd.dstat,
   irb->scsw.cmd.cpa);
  CLAW_DBF_TEXT(2, trace, "chanchk");

        }


 if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK)
                ccw_check_unit_check(p_ch, irb->ecw[0]);


 p_ch->last_dstat = irb->scsw.cmd.dstat;

        switch (p_ch->claw_state) {
 case 128:
  if (!((p_ch->irb->scsw.cmd.stctl & SCSW_STCTL_SEC_STATUS) ||
  (p_ch->irb->scsw.cmd.stctl == SCSW_STCTL_STATUS_PEND) ||
  (p_ch->irb->scsw.cmd.stctl ==
  (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND))))
   return;
  wake_up(&p_ch->wait);
  CLAW_DBF_TEXT(4, trace, "stop");
  return;
 case 131:
  if (!((p_ch->irb->scsw.cmd.stctl & SCSW_STCTL_SEC_STATUS) ||
  (p_ch->irb->scsw.cmd.stctl == SCSW_STCTL_STATUS_PEND) ||
  (p_ch->irb->scsw.cmd.stctl ==
  (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND)))) {
   CLAW_DBF_TEXT(4, trace, "haltio");
   return;
  }
  if (p_ch->flag == CLAW_READ) {
   p_ch->claw_state = 130;
   wake_up(&p_ch->wait);
  } else if (p_ch->flag == CLAW_WRITE) {
   p_ch->claw_state = 129;

   claw_strt_read(dev, LOCK_NO);
   claw_send_control(dev,
    SYSTEM_VALIDATE_REQUEST,
    0, 0, 0,
    p_env->host_name,
    p_env->adapter_name);
  } else {
   dev_warn(&cdev->dev, "The CLAW device received"
    " an unexpected IRQ, "
    "c-%02x d-%02x\n",
    irb->scsw.cmd.cstat,
    irb->scsw.cmd.dstat);
   return;
   }
  CLAW_DBF_TEXT(4, trace, "haltio");
  return;
 case 130:
  CLAW_DBF_TEXT(4, trace, "ReadIRQ");
  if (p_ch->irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) {
   clear_bit(0, (void *)&p_ch->IO_active);
   if ((p_ch->irb->ecw[0] & 0x41) == 0x41 ||
       (p_ch->irb->ecw[0] & 0x40) == 0x40 ||
       (p_ch->irb->ecw[0]) == 0) {
    privptr->stats.rx_errors++;
    dev_info(&cdev->dev,
     "%s: Restart is required after remote "
     "side recovers \n",
     dev->name);
   }
   CLAW_DBF_TEXT(4, trace, "notrdy");
   return;
  }
  if ((p_ch->irb->scsw.cmd.cstat & SCHN_STAT_PCI) &&
   (p_ch->irb->scsw.cmd.dstat == 0)) {
   if (test_and_set_bit(CLAW_BH_ACTIVE,
    (void *)&p_ch->flag_a) == 0)
    tasklet_schedule(&p_ch->tasklet);
   else
    CLAW_DBF_TEXT(4, trace, "PCINoBH");
   CLAW_DBF_TEXT(4, trace, "PCI_read");
   return;
  }
  if (!((p_ch->irb->scsw.cmd.stctl & SCSW_STCTL_SEC_STATUS) ||
   (p_ch->irb->scsw.cmd.stctl == SCSW_STCTL_STATUS_PEND) ||
   (p_ch->irb->scsw.cmd.stctl ==
   (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND)))) {
   CLAW_DBF_TEXT(4, trace, "SPend_rd");
   return;
  }
  clear_bit(0, (void *)&p_ch->IO_active);
  claw_clearbit_busy(TB_RETRY, dev);
  if (test_and_set_bit(CLAW_BH_ACTIVE,
   (void *)&p_ch->flag_a) == 0)
   tasklet_schedule(&p_ch->tasklet);
  else
   CLAW_DBF_TEXT(4, trace, "RdBHAct");
  CLAW_DBF_TEXT(4, trace, "RdIRQXit");
  return;
 case 129:
  if (p_ch->irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) {
   dev_info(&cdev->dev,
    "%s: Unit Check Occured in "
    "write channel\n", dev->name);
   clear_bit(0, (void *)&p_ch->IO_active);
   if (p_ch->irb->ecw[0] & 0x80) {
    dev_info(&cdev->dev,
     "%s: Resetting Event "
     "occurred:\n", dev->name);
    init_timer(&p_ch->timer);
    p_ch->timer.function =
     (void *)claw_write_retry;
    p_ch->timer.data = (unsigned long)p_ch;
    p_ch->timer.expires = jiffies + 10*HZ;
    add_timer(&p_ch->timer);
    dev_info(&cdev->dev,
     "%s: write connection "
     "restarting\n", dev->name);
   }
   CLAW_DBF_TEXT(4, trace, "rstrtwrt");
   return;
  }
  if (p_ch->irb->scsw.cmd.dstat & DEV_STAT_UNIT_EXCEP) {
   clear_bit(0, (void *)&p_ch->IO_active);
   dev_info(&cdev->dev,
    "%s: Unit Exception "
    "occurred in write channel\n",
    dev->name);
  }
  if (!((p_ch->irb->scsw.cmd.stctl & SCSW_STCTL_SEC_STATUS) ||
  (p_ch->irb->scsw.cmd.stctl == SCSW_STCTL_STATUS_PEND) ||
  (p_ch->irb->scsw.cmd.stctl ==
  (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND)))) {
   CLAW_DBF_TEXT(4, trace, "writeUE");
   return;
  }
  clear_bit(0, (void *)&p_ch->IO_active);
  if (claw_test_and_setbit_busy(TB_TX, dev) == 0) {
   claw_write_next(p_ch);
   claw_clearbit_busy(TB_TX, dev);
   claw_clear_busy(dev);
  }
  p_ch_r = (struct chbk *)&privptr->channel[READ];
  if (test_and_set_bit(CLAW_BH_ACTIVE,
   (void *)&p_ch_r->flag_a) == 0)
   tasklet_schedule(&p_ch_r->tasklet);
  CLAW_DBF_TEXT(4, trace, "StWtExit");
  return;
 default:
  dev_warn(&cdev->dev,
   "The CLAW device for %s received an unexpected IRQ\n",
    dev->name);
  CLAW_DBF_TEXT(2, trace, "badIRQ");
  return;
        }

}
