
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {TYPE_1__* session; int suspend_tx; } ;
struct TYPE_2__ {int lock; } ;


 int ISCSI_SUSPEND_BIT ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_suspend_queue(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->session->lock);
 set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 spin_unlock_bh(&conn->session->lock);
}
