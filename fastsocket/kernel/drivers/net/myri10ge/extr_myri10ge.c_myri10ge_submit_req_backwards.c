
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myri10ge_tx_buf {int req; int mask; int * lanai; } ;
struct mcp_kreq_ether_send {int dummy; } ;


 int mb () ;
 int myri10ge_pio_copy (int *,struct mcp_kreq_ether_send*,int) ;

__attribute__((used)) static inline void
myri10ge_submit_req_backwards(struct myri10ge_tx_buf *tx,
         struct mcp_kreq_ether_send *src, int cnt)
{
 int idx, starting_slot;
 starting_slot = tx->req;
 while (cnt > 1) {
  cnt--;
  idx = (starting_slot + cnt) & tx->mask;
  myri10ge_pio_copy(&tx->lanai[idx], &src[cnt], sizeof(*src));
  mb();
 }
}
