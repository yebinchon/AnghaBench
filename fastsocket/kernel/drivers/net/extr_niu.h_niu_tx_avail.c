
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tx_ring_info {int prod; int cons; scalar_t__ pending; } ;


 int MAX_TX_RING_SIZE ;

__attribute__((used)) static inline u32 niu_tx_avail(struct tx_ring_info *tp)
{
 return (tp->pending -
  ((tp->prod - tp->cons) & (MAX_TX_RING_SIZE - 1)));
}
