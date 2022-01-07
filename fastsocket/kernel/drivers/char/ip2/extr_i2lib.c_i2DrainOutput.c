
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wait_queue_t ;
typedef TYPE_1__* i2eBordStrPtr ;
typedef TYPE_2__* i2ChanStrPtr ;
struct TYPE_12__ {scalar_t__ expires; } ;
struct TYPE_11__ {TYPE_4__ BookmarkTimer; int pBookmarkWait; TYPE_1__* pMyBord; } ;
struct TYPE_10__ {int (* i2eFatalTrap ) (TYPE_1__*) ;scalar_t__ i2eFatal; } ;


 int CHANN ;
 int CMD_BMARK_REQ ;
 int ITRC_DRAIN ;
 int ITRC_ENTER ;
 int ITRC_RETURN ;
 int PTYPE_INLINE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int del_timer (TYPE_4__*) ;
 int i2DrainWakeup ;
 int i2QueueCommands (int ,TYPE_2__*,int,int,int ) ;
 int init_waitqueue_entry (int *,int ) ;
 int ip2trace (int ,int ,int,int,scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_4__*,scalar_t__) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int serviceOutgoingFifo (TYPE_1__*) ;
 int set_current_state (int ) ;
 int setup_timer (TYPE_4__*,int ,unsigned long) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
i2DrainOutput(i2ChanStrPtr pCh, int timeout)
{
 wait_queue_t wait;
 i2eBordStrPtr pB;

 ip2trace (CHANN, ITRC_DRAIN, ITRC_ENTER, 1, pCh->BookmarkTimer.expires);

 pB = pCh->pMyBord;


 if (pB->i2eFatal) {
  if (pB->i2eFatalTrap) {
   (*(pB)->i2eFatalTrap)(pB);
  }
  return;
 }
 if ((timeout > 0) && (pCh->BookmarkTimer.expires == 0 )) {

  setup_timer(&pCh->BookmarkTimer, i2DrainWakeup,
    (unsigned long)pCh);

  ip2trace (CHANN, ITRC_DRAIN, 1, 1, pCh->BookmarkTimer.expires );

  mod_timer(&pCh->BookmarkTimer, jiffies + timeout);
 }

 i2QueueCommands( PTYPE_INLINE, pCh, -1, 1, CMD_BMARK_REQ );

 init_waitqueue_entry(&wait, current);
 add_wait_queue(&(pCh->pBookmarkWait), &wait);
 set_current_state( TASK_INTERRUPTIBLE );

 serviceOutgoingFifo( pB );

 schedule();


 set_current_state( TASK_RUNNING );
 remove_wait_queue(&(pCh->pBookmarkWait), &wait);


 if ((timeout > 0) && pCh->BookmarkTimer.expires &&
                      time_before(jiffies, pCh->BookmarkTimer.expires)) {
  del_timer( &(pCh->BookmarkTimer) );
  pCh->BookmarkTimer.expires = 0;

  ip2trace (CHANN, ITRC_DRAIN, 3, 1, pCh->BookmarkTimer.expires );

 }
 ip2trace (CHANN, ITRC_DRAIN, ITRC_RETURN, 1, pCh->BookmarkTimer.expires );
 return;
}
