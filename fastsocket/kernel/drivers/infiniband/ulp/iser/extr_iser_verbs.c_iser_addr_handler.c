
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ context; } ;
struct iser_device {int dummy; } ;
struct iser_conn {struct iser_device* device; } ;


 int iser_connect_error (struct rdma_cm_id*) ;
 struct iser_device* iser_device_find_by_ib_device (struct rdma_cm_id*) ;
 int iser_err (char*,...) ;
 int rdma_resolve_route (struct rdma_cm_id*,int) ;

__attribute__((used)) static int iser_addr_handler(struct rdma_cm_id *cma_id)
{
 struct iser_device *device;
 struct iser_conn *ib_conn;
 int ret;

 device = iser_device_find_by_ib_device(cma_id);
 if (!device) {
  iser_err("device lookup/creation failed\n");
  return iser_connect_error(cma_id);
 }

 ib_conn = (struct iser_conn *)cma_id->context;
 ib_conn->device = device;

 ret = rdma_resolve_route(cma_id, 1000);
 if (ret) {
  iser_err("resolve route failed: %d\n", ret);
  return iser_connect_error(cma_id);
 }

 return 0;
}
