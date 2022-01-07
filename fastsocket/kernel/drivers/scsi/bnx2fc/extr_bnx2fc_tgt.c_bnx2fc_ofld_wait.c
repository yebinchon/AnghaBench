
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_rport {int ofld_timer; int flags; int ofld_wait; } ;


 int BNX2FC_FLAG_OFLD_REQ_CMPL ;
 scalar_t__ BNX2FC_FW_TIMEOUT ;
 int bnx2fc_ofld_timer ;
 int current ;
 int del_timer_sync (int *) ;
 int flush_signals (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int setup_timer (int *,int ,unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void bnx2fc_ofld_wait(struct bnx2fc_rport *tgt)
{
 setup_timer(&tgt->ofld_timer, bnx2fc_ofld_timer, (unsigned long)tgt);
 mod_timer(&tgt->ofld_timer, jiffies + BNX2FC_FW_TIMEOUT);

 wait_event_interruptible(tgt->ofld_wait,
     (test_bit(
      BNX2FC_FLAG_OFLD_REQ_CMPL,
      &tgt->flags)));
 if (signal_pending(current))
  flush_signals(current);
 del_timer_sync(&tgt->ofld_timer);
}
