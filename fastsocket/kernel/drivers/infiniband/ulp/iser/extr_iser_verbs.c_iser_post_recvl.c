
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_conn {int post_recv_buf_count; int qp; scalar_t__ login_resp_buf; TYPE_2__* device; int login_resp_dma; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_recv_wr {unsigned long wr_id; int num_sge; int * next; struct ib_sge* sg_list; } ;
struct TYPE_4__ {TYPE_1__* mr; } ;
struct TYPE_3__ {int lkey; } ;


 int ISER_RX_LOGIN_SIZE ;
 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;
 int iser_err (char*,int) ;

int iser_post_recvl(struct iser_conn *ib_conn)
{
 struct ib_recv_wr rx_wr, *rx_wr_failed;
 struct ib_sge sge;
 int ib_ret;

 sge.addr = ib_conn->login_resp_dma;
 sge.length = ISER_RX_LOGIN_SIZE;
 sge.lkey = ib_conn->device->mr->lkey;

 rx_wr.wr_id = (unsigned long)ib_conn->login_resp_buf;
 rx_wr.sg_list = &sge;
 rx_wr.num_sge = 1;
 rx_wr.next = ((void*)0);

 ib_conn->post_recv_buf_count++;
 ib_ret = ib_post_recv(ib_conn->qp, &rx_wr, &rx_wr_failed);
 if (ib_ret) {
  iser_err("ib_post_recv failed ret=%d\n", ib_ret);
  ib_conn->post_recv_buf_count--;
 }
 return ib_ret;
}
