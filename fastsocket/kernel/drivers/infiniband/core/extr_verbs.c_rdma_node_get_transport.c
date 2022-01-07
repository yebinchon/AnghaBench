
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_transport_type { ____Placeholder_rdma_transport_type } rdma_transport_type ;
typedef enum rdma_node_type { ____Placeholder_rdma_node_type } rdma_node_type ;


 int BUG () ;




 int RDMA_TRANSPORT_IB ;
 int RDMA_TRANSPORT_IWARP ;

enum rdma_transport_type
rdma_node_get_transport(enum rdma_node_type node_type)
{
 switch (node_type) {
 case 131:
 case 129:
 case 130:
  return RDMA_TRANSPORT_IB;
 case 128:
  return RDMA_TRANSPORT_IWARP;
 default:
  BUG();
  return 0;
 }
}
