
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {size_t sbq_curr_idx; size_t sbq_len; int sbq_free_cnt; struct bq_desc* sbq; } ;
struct bq_desc {int dummy; } ;



__attribute__((used)) static struct bq_desc *ql_get_curr_sbuf(struct rx_ring *rx_ring)
{
 struct bq_desc *sbq_desc = &rx_ring->sbq[rx_ring->sbq_curr_idx];
 rx_ring->sbq_curr_idx++;
 if (rx_ring->sbq_curr_idx == rx_ring->sbq_len)
  rx_ring->sbq_curr_idx = 0;
 rx_ring->sbq_free_cnt++;
 return sbq_desc;
}
