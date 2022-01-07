
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int data_in_count; } ;


 int DP_TX_PACKET_RING_CHUNK_NUM ;
 scalar_t__ TX_STATUS_DATA_OUT_COUNT_MASK ;
 int WARN_ON (int) ;

__attribute__((used)) static bool wl1251_tx_double_buffer_busy(struct wl1251 *wl, u32 data_out_count)
{
 int used, data_in_count;

 data_in_count = wl->data_in_count;

 if (data_in_count < data_out_count)

  data_in_count += TX_STATUS_DATA_OUT_COUNT_MASK + 1;

 used = data_in_count - data_out_count;

 WARN_ON(used < 0);
 WARN_ON(used > DP_TX_PACKET_RING_CHUNK_NUM);

 if (used >= DP_TX_PACKET_RING_CHUNK_NUM)
  return 1;
 else
  return 0;
}
