
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {scalar_t__ ptr_mask; } ;


 unsigned int DIV_ROUND_UP (scalar_t__,int) ;
 int TSOH_PER_PAGE ;

__attribute__((used)) static unsigned int efx_tsoh_page_count(struct efx_tx_queue *tx_queue)
{
 return DIV_ROUND_UP(tx_queue->ptr_mask + 1, 2 * TSOH_PER_PAGE);
}
