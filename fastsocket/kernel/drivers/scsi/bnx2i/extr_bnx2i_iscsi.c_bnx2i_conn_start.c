
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct bnx2i_conn {TYPE_1__* ep; } ;
struct TYPE_5__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_2__ ofld_timer; int ofld_wait; } ;


 scalar_t__ EP_STATE_ULP_UPDATE_START ;
 int HZ ;
 int add_timer (TYPE_2__*) ;
 int bnx2i_ep_ofld_timer ;
 int bnx2i_update_iscsi_conn (struct iscsi_conn*) ;
 int current ;
 int del_timer_sync (TYPE_2__*) ;
 int flush_signals (int ) ;
 int iscsi_conn_start (struct iscsi_cls_conn*) ;
 scalar_t__ jiffies ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int bnx2i_conn_start(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct bnx2i_conn *bnx2i_conn = conn->dd_data;

 bnx2i_conn->ep->state = EP_STATE_ULP_UPDATE_START;
 bnx2i_update_iscsi_conn(conn);





 bnx2i_conn->ep->ofld_timer.expires = 1 * HZ + jiffies;
 bnx2i_conn->ep->ofld_timer.function = bnx2i_ep_ofld_timer;
 bnx2i_conn->ep->ofld_timer.data = (unsigned long) bnx2i_conn->ep;
 add_timer(&bnx2i_conn->ep->ofld_timer);

 wait_event_interruptible(bnx2i_conn->ep->ofld_wait,
   bnx2i_conn->ep->state != EP_STATE_ULP_UPDATE_START);

 if (signal_pending(current))
  flush_signals(current);
 del_timer_sync(&bnx2i_conn->ep->ofld_timer);

 iscsi_conn_start(cls_conn);
 return 0;
}
