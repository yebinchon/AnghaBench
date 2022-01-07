
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {struct claw_privbk* ml_priv; } ;
struct clawh {int flag; } ;
struct claw_privbk {struct ccwbk* p_read_active_first; TYPE_2__* p_write_active_first; scalar_t__ p_claw_signal_blk; struct chbk* channel; } ;
struct chbk {int cdev; int IO_active; } ;
struct TYPE_6__ {scalar_t__ flag; } ;
struct ccwbk {int read; TYPE_3__ header; } ;
typedef unsigned long __u32 ;
struct TYPE_4__ {scalar_t__ flag; } ;
struct TYPE_5__ {TYPE_1__ header; } ;


 int CLAW_BUSY ;
 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_IDLE ;
 scalar_t__ CLAW_PENDING ;
 int LOCK_YES ;
 size_t READ ;
 int ccw_check_return_code (int ,int) ;
 int ccw_device_start (int ,int *,unsigned long,int,int ) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,void*) ;
 int trace ;

__attribute__((used)) static void
claw_strt_read (struct net_device *dev, int lock )
{
        int rc = 0;
        __u32 parm;
        unsigned long saveflags = 0;
 struct claw_privbk *privptr = dev->ml_priv;
        struct ccwbk*p_ccwbk;
        struct chbk *p_ch;
        struct clawh *p_clawh;
        p_ch=&privptr->channel[READ];

 CLAW_DBF_TEXT(4, trace, "StRdNter");
        p_clawh=(struct clawh *)privptr->p_claw_signal_blk;
        p_clawh->flag=CLAW_IDLE;

        if ((privptr->p_write_active_first!=((void*)0) &&
             privptr->p_write_active_first->header.flag!=CLAW_PENDING) ||
            (privptr->p_read_active_first!=((void*)0) &&
             privptr->p_read_active_first->header.flag!=CLAW_PENDING )) {
                p_clawh->flag=CLAW_BUSY;
        }
        if (lock==LOCK_YES) {
                spin_lock_irqsave(get_ccwdev_lock(p_ch->cdev), saveflags);
        }
        if (test_and_set_bit(0, (void *)&p_ch->IO_active) == 0) {
  CLAW_DBF_TEXT(4, trace, "HotRead");
                p_ccwbk=privptr->p_read_active_first;
                parm = (unsigned long) p_ch;
                rc = ccw_device_start (p_ch->cdev, &p_ccwbk->read, parm,
           0xff, 0);
                if (rc != 0) {
                        ccw_check_return_code(p_ch->cdev, rc);
                }
        }
 else {
  CLAW_DBF_TEXT(2, trace, "ReadAct");
 }

        if (lock==LOCK_YES) {
                spin_unlock_irqrestore(get_ccwdev_lock(p_ch->cdev), saveflags);
        }
 CLAW_DBF_TEXT(4, trace, "StRdExit");
        return;
}
