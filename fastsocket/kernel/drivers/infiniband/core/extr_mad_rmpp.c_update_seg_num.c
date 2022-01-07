
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mad_rmpp_recv {scalar_t__ seg_num; struct ib_mad_recv_buf* cur_seg_buf; TYPE_1__* rmpp_wc; } ;
struct list_head {int dummy; } ;
struct ib_mad_recv_buf {int dummy; } ;
struct TYPE_2__ {struct list_head rmpp_list; } ;


 struct ib_mad_recv_buf* get_next_seg (struct list_head*,struct ib_mad_recv_buf*) ;
 scalar_t__ get_seg_num (struct ib_mad_recv_buf*) ;

__attribute__((used)) static void update_seg_num(struct mad_rmpp_recv *rmpp_recv,
      struct ib_mad_recv_buf *new_buf)
{
 struct list_head *rmpp_list = &rmpp_recv->rmpp_wc->rmpp_list;

 while (new_buf && (get_seg_num(new_buf) == rmpp_recv->seg_num + 1)) {
  rmpp_recv->cur_seg_buf = new_buf;
  rmpp_recv->seg_num++;
  new_buf = get_next_seg(rmpp_list, new_buf);
 }
}
