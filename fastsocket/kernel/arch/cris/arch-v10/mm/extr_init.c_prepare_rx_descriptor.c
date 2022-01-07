
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etrax_dma_descr {int sw_len; scalar_t__ buf; } ;


 int flush_etrax_cacherange (void*,int) ;

void
prepare_rx_descriptor(struct etrax_dma_descr *desc)
{
 flush_etrax_cacherange((void *)desc->buf, desc->sw_len ? desc->sw_len : 65536);
}
