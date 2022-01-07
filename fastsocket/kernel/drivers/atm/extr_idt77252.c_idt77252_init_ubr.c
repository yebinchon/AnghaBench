
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_map {int init_er; int lacr; int max_er; int class; TYPE_1__* estimator; int lock; } ;
struct idt77252_dev {int link_pcr; } ;
struct atm_vcc {int dummy; } ;
struct atm_qos {int txtp; } ;
struct TYPE_3__ {int timer; } ;


 int SCHED_UBR ;
 int atm_pcr_goal (int *) ;
 int del_timer (int *) ;
 TYPE_1__* idt77252_init_est (struct vc_map*,int) ;
 int idt77252_rate_logindex (struct idt77252_dev*,int) ;
 int kfree (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
idt77252_init_ubr(struct idt77252_dev *card, struct vc_map *vc,
    struct atm_vcc *vcc, struct atm_qos *qos)
{
 unsigned long flags;
 int tcr;

 spin_lock_irqsave(&vc->lock, flags);
 if (vc->estimator) {
  del_timer(&vc->estimator->timer);
  kfree(vc->estimator);
  vc->estimator = ((void*)0);
 }
 spin_unlock_irqrestore(&vc->lock, flags);

 tcr = atm_pcr_goal(&qos->txtp);
 if (tcr == 0)
  tcr = card->link_pcr;

 vc->estimator = idt77252_init_est(vc, tcr);

 vc->class = SCHED_UBR;
 vc->init_er = idt77252_rate_logindex(card, tcr);
 vc->lacr = vc->init_er;
 if (tcr < 0)
  vc->max_er = vc->init_er;
 else
  vc->max_er = 0xff;

 return 0;
}
