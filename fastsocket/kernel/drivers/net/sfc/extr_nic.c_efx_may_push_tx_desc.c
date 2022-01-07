
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int write_count; int empty_read_count; } ;


 unsigned int ACCESS_ONCE (int ) ;
 unsigned int EFX_EMPTY_COUNT_VALID ;

__attribute__((used)) static inline bool
efx_may_push_tx_desc(struct efx_tx_queue *tx_queue, unsigned int write_count)
{
 unsigned empty_read_count = ACCESS_ONCE(tx_queue->empty_read_count);

 if (empty_read_count == 0)
  return 0;

 tx_queue->empty_read_count = 0;
 return ((empty_read_count ^ write_count) & ~EFX_EMPTY_COUNT_VALID) == 0
  && tx_queue->write_count - write_count == 1;
}
