
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_blade_state {int bs_kgts_sema; int * bs_async_wq; scalar_t__ bs_async_cbrs; scalar_t__ bs_async_dsr_bytes; } ;


 struct gru_blade_state* ASYNC_HAN_TO_BS (unsigned long) ;
 int down_write (int *) ;
 int up_write (int *) ;

void gru_release_async_resources(unsigned long han)
{
 struct gru_blade_state *bs = ASYNC_HAN_TO_BS(han);

 down_write(&bs->bs_kgts_sema);
 bs->bs_async_dsr_bytes = 0;
 bs->bs_async_cbrs = 0;
 bs->bs_async_wq = ((void*)0);
 up_write(&bs->bs_kgts_sema);
}
