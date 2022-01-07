
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_route {int num_paths; struct ib_sa_path_rec* path_rec; } ;
struct ib_sa_path_rec {int dummy; } ;
struct TYPE_4__ {int status; int event; } ;
struct cma_work {int work; TYPE_1__ event; int new_state; int old_state; TYPE_3__* id; } ;
struct TYPE_5__ {struct rdma_route route; } ;
struct TYPE_6__ {TYPE_2__ id; } ;


 int RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_EVENT_ROUTE_ERROR ;
 int RDMA_CM_ROUTE_QUERY ;
 int cma_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void cma_query_handler(int status, struct ib_sa_path_rec *path_rec,
         void *context)
{
 struct cma_work *work = context;
 struct rdma_route *route;

 route = &work->id->id.route;

 if (!status) {
  route->num_paths = 1;
  *route->path_rec = *path_rec;
 } else {
  work->old_state = RDMA_CM_ROUTE_QUERY;
  work->new_state = RDMA_CM_ADDR_RESOLVED;
  work->event.event = RDMA_CM_EVENT_ROUTE_ERROR;
  work->event.status = status;
 }

 queue_work(cma_wq, &work->work);
}
