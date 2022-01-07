
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {int comp_mask; } ;
struct TYPE_8__ {TYPE_1__ sa_hdr; scalar_t__ data; } ;
struct mcast_req {size_t func; int func_list; int group_list; TYPE_3__ sa_mad; } ;
struct TYPE_9__ {int scope_join_state; } ;
struct mcast_group {int state; int prev_state; TYPE_2__* func; TYPE_5__ rec; } ;
struct ib_sa_mcmember_data {int dummy; } ;
struct TYPE_7__ {int num_pend_reqs; } ;


 int MCAST_JOIN_SENT ;
 int cmp_rec (TYPE_5__*,struct ib_sa_mcmember_data*,int ) ;
 int join_group (struct mcast_group*,size_t,int) ;
 int kfree (struct mcast_req*) ;
 int list_del (int *) ;
 scalar_t__ send_join_to_wire (struct mcast_group*,TYPE_3__*) ;
 int send_reply_to_slave (size_t,struct mcast_group*,TYPE_3__*,int ) ;

__attribute__((used)) static int handle_join_req(struct mcast_group *group, u8 join_mask,
      struct mcast_req *req)
{
 u8 group_join_state = group->rec.scope_join_state & 7;
 int ref = 0;
 u16 status;
 struct ib_sa_mcmember_data *sa_data = (struct ib_sa_mcmember_data *)req->sa_mad.data;

 if (join_mask == (group_join_state & join_mask)) {

  status = cmp_rec(&group->rec, sa_data, req->sa_mad.sa_hdr.comp_mask);
  if (!status)
   join_group(group, req->func, join_mask);

  --group->func[req->func].num_pend_reqs;
  send_reply_to_slave(req->func, group, &req->sa_mad, status);
  list_del(&req->group_list);
  list_del(&req->func_list);
  kfree(req);
  ++ref;
 } else {

  group->prev_state = group->state;
  if (send_join_to_wire(group, &req->sa_mad)) {
   --group->func[req->func].num_pend_reqs;
   list_del(&req->group_list);
   list_del(&req->func_list);
   kfree(req);
   ref = 1;
   group->state = group->prev_state;
  } else
   group->state = MCAST_JOIN_SENT;
 }

 return ref;
}
