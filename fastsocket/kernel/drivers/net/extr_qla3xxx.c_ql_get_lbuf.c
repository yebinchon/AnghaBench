
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_rcv_buf_cb {int dummy; } ;
struct ql3_adapter {size_t lrg_buf_index; size_t num_large_buffers; int lrg_buf_release_cnt; struct ql_rcv_buf_cb* lrg_buf; } ;



__attribute__((used)) static struct ql_rcv_buf_cb *ql_get_lbuf(struct ql3_adapter *qdev)
{
 struct ql_rcv_buf_cb *lrg_buf_cb = ((void*)0);
 lrg_buf_cb = &qdev->lrg_buf[qdev->lrg_buf_index];
 qdev->lrg_buf_release_cnt++;
 if (++qdev->lrg_buf_index == qdev->num_large_buffers)
  qdev->lrg_buf_index = 0;
 return(lrg_buf_cb);
}
