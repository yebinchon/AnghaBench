
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int mode; int fip_recv_list; int recv_work; int timer_work; int timer; int flogi_oxid; int ctlr_lock; int ctlr_mutex; int fcfs; } ;
typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int FC_XID_UNKNOWN ;
 int FIP_ST_LINK_WAIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int fcoe_ctlr_recv_work ;
 int fcoe_ctlr_set_state (struct fcoe_ctlr*,int ) ;
 int fcoe_ctlr_timeout ;
 int fcoe_ctlr_timer_work ;
 int mutex_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

void fcoe_ctlr_init(struct fcoe_ctlr *fip, enum fip_state mode)
{
 fcoe_ctlr_set_state(fip, FIP_ST_LINK_WAIT);
 fip->mode = mode;
 INIT_LIST_HEAD(&fip->fcfs);
 mutex_init(&fip->ctlr_mutex);
 spin_lock_init(&fip->ctlr_lock);
 fip->flogi_oxid = FC_XID_UNKNOWN;
 setup_timer(&fip->timer, fcoe_ctlr_timeout, (unsigned long)fip);
 INIT_WORK(&fip->timer_work, fcoe_ctlr_timer_work);
 INIT_WORK(&fip->recv_work, fcoe_ctlr_recv_work);
 skb_queue_head_init(&fip->fip_recv_list);
}
