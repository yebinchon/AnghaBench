
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_rx_desc {int rx_sg; } ;
struct iser_conn {unsigned int rx_desc_head; int post_recv_buf_count; struct ib_recv_wr* rx_wr; int qp; struct iser_rx_desc* rx_descs; } ;
struct ib_recv_wr {unsigned long wr_id; int num_sge; struct ib_recv_wr* next; int * sg_list; } ;


 int ISER_QP_MAX_RECV_DTOS ;
 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;
 int iser_err (char*,int) ;

int iser_post_recvm(struct iser_conn *ib_conn, int count)
{
 struct ib_recv_wr *rx_wr, *rx_wr_failed;
 int i, ib_ret;
 unsigned int my_rx_head = ib_conn->rx_desc_head;
 struct iser_rx_desc *rx_desc;

 for (rx_wr = ib_conn->rx_wr, i = 0; i < count; i++, rx_wr++) {
  rx_desc = &ib_conn->rx_descs[my_rx_head];
  rx_wr->wr_id = (unsigned long)rx_desc;
  rx_wr->sg_list = &rx_desc->rx_sg;
  rx_wr->num_sge = 1;
  rx_wr->next = rx_wr + 1;
  my_rx_head = (my_rx_head + 1) & (ISER_QP_MAX_RECV_DTOS - 1);
 }

 rx_wr--;
 rx_wr->next = ((void*)0);

 ib_conn->post_recv_buf_count += count;
 ib_ret = ib_post_recv(ib_conn->qp, ib_conn->rx_wr, &rx_wr_failed);
 if (ib_ret) {
  iser_err("ib_post_recv failed ret=%d\n", ib_ret);
  ib_conn->post_recv_buf_count -= count;
 } else
  ib_conn->rx_desc_head = my_rx_head;
 return ib_ret;
}
