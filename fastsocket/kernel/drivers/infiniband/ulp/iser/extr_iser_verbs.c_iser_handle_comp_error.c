
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {scalar_t__ type; } ;
struct iser_conn {scalar_t__ post_recv_buf_count; int wait; int state; TYPE_1__* iser_conn; int post_send_buf_count; } ;
struct TYPE_4__ {int desc_cache; } ;
struct TYPE_3__ {int iscsi_conn; } ;


 int ISCSI_ERR_CONN_FAILED ;
 scalar_t__ ISCSI_TX_DATAOUT ;
 int ISER_CONN_DOWN ;
 int ISER_CONN_TERMINATING ;
 int ISER_CONN_UP ;
 scalar_t__ atomic_read (int *) ;
 TYPE_2__ ig ;
 int iscsi_conn_failure (int ,int ) ;
 scalar_t__ iser_conn_state_comp_exch (struct iser_conn*,int ,int ) ;
 int kmem_cache_free (int ,struct iser_tx_desc*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void iser_handle_comp_error(struct iser_tx_desc *desc,
    struct iser_conn *ib_conn)
{
 if (desc && desc->type == ISCSI_TX_DATAOUT)
  kmem_cache_free(ig.desc_cache, desc);

 if (ib_conn->post_recv_buf_count == 0 &&
     atomic_read(&ib_conn->post_send_buf_count) == 0) {



  if (iser_conn_state_comp_exch(ib_conn, ISER_CONN_UP,
      ISER_CONN_TERMINATING))
   iscsi_conn_failure(ib_conn->iser_conn->iscsi_conn,
        ISCSI_ERR_CONN_FAILED);



  ib_conn->state = ISER_CONN_DOWN;
  wake_up_interruptible(&ib_conn->wait);
 }
}
