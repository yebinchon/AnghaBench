
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {scalar_t__ node_type; } ;


 scalar_t__ RDMA_NODE_IB_SWITCH ;

__attribute__((used)) static inline int start_port(struct ib_device *device)
{
 return (device->node_type == RDMA_NODE_IB_SWITCH) ? 0 : 1;
}
