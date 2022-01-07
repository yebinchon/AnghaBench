
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int state; int lock; } ;
typedef enum iser_ib_conn_state { ____Placeholder_iser_ib_conn_state } iser_ib_conn_state ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iser_conn_state_comp_exch(struct iser_conn *ib_conn,
         enum iser_ib_conn_state comp,
         enum iser_ib_conn_state exch)
{
 int ret;

 spin_lock_bh(&ib_conn->lock);
 if ((ret = (ib_conn->state == comp)))
  ib_conn->state = exch;
 spin_unlock_bh(&ib_conn->lock);
 return ret;
}
