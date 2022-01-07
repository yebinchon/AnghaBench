
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int context; } ;
struct rdma_cm_event {int event; int status; } ;
 int iser_addr_handler (struct rdma_cm_id*) ;
 int iser_connect_error (struct rdma_cm_id*) ;
 int iser_connected_handler (struct rdma_cm_id*) ;
 int iser_disconnected_handler (struct rdma_cm_id*) ;
 int iser_err (char*,int) ;
 int iser_info (char*,int,int ,int ,struct rdma_cm_id*) ;
 int iser_route_handler (struct rdma_cm_id*) ;

__attribute__((used)) static int iser_cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 int ret = 0;

 iser_info("event %d status %d conn %p id %p\n",
    event->event, event->status, cma_id->context, cma_id);

 switch (event->event) {
 case 136:
  ret = iser_addr_handler(cma_id);
  break;
 case 129:
  ret = iser_route_handler(cma_id);
  break;
 case 132:
  iser_connected_handler(cma_id);
  break;
 case 137:
 case 130:
 case 135:
 case 128:
 case 131:
  ret = iser_connect_error(cma_id);
  break;
 case 133:
 case 134:
 case 138:
  ret = iser_disconnected_handler(cma_id);
  break;
 default:
  iser_err("Unexpected RDMA CM event (%d)\n", event->event);
  break;
 }
 return ret;
}
