
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcast_req {size_t func; int func_list; int group_list; struct mcast_group* group; } ;
struct mcast_group {int refcount; int work; TYPE_2__* demux; TYPE_1__* func; int pending_list; } ;
struct TYPE_4__ {int mcg_wq; } ;
struct TYPE_3__ {int pending; } ;


 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int safe_atomic_dec (int *) ;

__attribute__((used)) static void queue_req(struct mcast_req *req)
{
 struct mcast_group *group = req->group;

 atomic_inc(&group->refcount);
 atomic_inc(&group->refcount);
 list_add_tail(&req->group_list, &group->pending_list);
 list_add_tail(&req->func_list, &group->func[req->func].pending);

 if (!queue_work(group->demux->mcg_wq, &group->work))
  safe_atomic_dec(&group->refcount);
}
