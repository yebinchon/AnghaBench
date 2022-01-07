
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int dummy; } ;
struct ql_adapter {int dummy; } ;


 int ql_update_lbq (struct ql_adapter*,struct rx_ring*) ;
 int ql_update_sbq (struct ql_adapter*,struct rx_ring*) ;

__attribute__((used)) static void ql_update_buffer_queues(struct ql_adapter *qdev,
        struct rx_ring *rx_ring)
{
 ql_update_sbq(qdev, rx_ring);
 ql_update_lbq(qdev, rx_ring);
}
