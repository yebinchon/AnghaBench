
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct efx_tx_queue {TYPE_1__ txd; } ;
typedef int efx_qword_t ;



__attribute__((used)) static inline efx_qword_t *
efx_tx_desc(struct efx_tx_queue *tx_queue, unsigned int index)
{
 return ((efx_qword_t *) (tx_queue->txd.addr)) + index;
}
