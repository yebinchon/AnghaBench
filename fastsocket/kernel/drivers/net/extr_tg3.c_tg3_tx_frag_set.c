
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tg3_napi {int * tx_ring; TYPE_1__* tx_buffers; struct tg3* tp; } ;
struct tg3 {int dma_limit; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int fragmented; } ;


 int NEXT_TX (int) ;
 int SHORT_DMA_BUG ;
 int TXD_FLAG_END ;
 scalar_t__ tg3_40bit_overflow_test (struct tg3*,int,int) ;
 scalar_t__ tg3_4g_overflow_test (int,int) ;
 scalar_t__ tg3_4g_tso_overflow_test (struct tg3*,int,int,int) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_tx_set_bd (int *,int,int,int,int,int) ;

__attribute__((used)) static bool tg3_tx_frag_set(struct tg3_napi *tnapi, u32 *entry, u32 *budget,
       dma_addr_t map, u32 len, u32 flags,
       u32 mss, u32 vlan)
{
 struct tg3 *tp = tnapi->tp;
 bool hwbug = 0;

 if (tg3_flag(tp, SHORT_DMA_BUG) && len <= 8)
  hwbug = 1;

 if (tg3_4g_overflow_test(map, len))
  hwbug = 1;

 if (tg3_4g_tso_overflow_test(tp, map, len, mss))
  hwbug = 1;

 if (tg3_40bit_overflow_test(tp, map, len))
  hwbug = 1;

 if (tp->dma_limit) {
  u32 prvidx = *entry;
  u32 tmp_flag = flags & ~TXD_FLAG_END;
  while (len > tp->dma_limit && *budget) {
   u32 frag_len = tp->dma_limit;
   len -= tp->dma_limit;


   if (len <= 8) {
    len += tp->dma_limit / 2;
    frag_len = tp->dma_limit / 2;
   }

   tnapi->tx_buffers[*entry].fragmented = 1;

   tg3_tx_set_bd(&tnapi->tx_ring[*entry], map,
          frag_len, tmp_flag, mss, vlan);
   *budget -= 1;
   prvidx = *entry;
   *entry = NEXT_TX(*entry);

   map += frag_len;
  }

  if (len) {
   if (*budget) {
    tg3_tx_set_bd(&tnapi->tx_ring[*entry], map,
           len, flags, mss, vlan);
    *budget -= 1;
    *entry = NEXT_TX(*entry);
   } else {
    hwbug = 1;
    tnapi->tx_buffers[prvidx].fragmented = 0;
   }
  }
 } else {
  tg3_tx_set_bd(&tnapi->tx_ring[*entry], map,
         len, flags, mss, vlan);
  *entry = NEXT_TX(*entry);
 }

 return hwbug;
}
