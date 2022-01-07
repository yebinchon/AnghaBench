
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iucv_connection {void* rx_buff; void* tx_buff; int list; int fsm; int userid; int timer; int max_buffsize; struct net_device* netdev; int collect_lock; int commit_queue; int collect_queue; } ;


 int CONN_FSM_LEN ;
 int CONN_STATE_INVALID ;
 int CONN_STATE_STOPPED ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NETIUCV_BUFSIZE_DEFAULT ;
 int NR_CONN_EVENTS ;
 int NR_CONN_STATES ;
 void* alloc_skb (int ,int) ;
 int conn_event_names ;
 int conn_fsm ;
 int conn_state_names ;
 int fsm_newstate (int ,int ) ;
 int fsm_settimer (int ,int *) ;
 int init_fsm (char*,int ,int ,int ,int ,int ,int ,int) ;
 int iucv_connection_list ;
 int iucv_connection_rwlock ;
 int kfree (struct iucv_connection*) ;
 int kfree_skb (void*) ;
 struct iucv_connection* kzalloc (int,int) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char*,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct iucv_connection *netiucv_new_connection(struct net_device *dev,
            char *username)
{
 struct iucv_connection *conn;

 conn = kzalloc(sizeof(*conn), GFP_KERNEL);
 if (!conn)
  goto out;
 skb_queue_head_init(&conn->collect_queue);
 skb_queue_head_init(&conn->commit_queue);
 spin_lock_init(&conn->collect_lock);
 conn->max_buffsize = NETIUCV_BUFSIZE_DEFAULT;
 conn->netdev = dev;

 conn->rx_buff = alloc_skb(conn->max_buffsize, GFP_KERNEL | GFP_DMA);
 if (!conn->rx_buff)
  goto out_conn;
 conn->tx_buff = alloc_skb(conn->max_buffsize, GFP_KERNEL | GFP_DMA);
 if (!conn->tx_buff)
  goto out_rx;
 conn->fsm = init_fsm("netiucvconn", conn_state_names,
        conn_event_names, NR_CONN_STATES,
        NR_CONN_EVENTS, conn_fsm, CONN_FSM_LEN,
        GFP_KERNEL);
 if (!conn->fsm)
  goto out_tx;

 fsm_settimer(conn->fsm, &conn->timer);
 fsm_newstate(conn->fsm, CONN_STATE_INVALID);

 if (username) {
  memcpy(conn->userid, username, 9);
  fsm_newstate(conn->fsm, CONN_STATE_STOPPED);
 }

 write_lock_bh(&iucv_connection_rwlock);
 list_add_tail(&conn->list, &iucv_connection_list);
 write_unlock_bh(&iucv_connection_rwlock);
 return conn;

out_tx:
 kfree_skb(conn->tx_buff);
out_rx:
 kfree_skb(conn->rx_buff);
out_conn:
 kfree(conn);
out:
 return ((void*)0);
}
