
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int cnsmr_idx_db_reg; int cnsmr_idx; } ;


 int ql_write_db_reg (int ,int ) ;

__attribute__((used)) static void ql_write_cq_idx(struct rx_ring *rx_ring)
{
 ql_write_db_reg(rx_ring->cnsmr_idx, rx_ring->cnsmr_idx_db_reg);
}
