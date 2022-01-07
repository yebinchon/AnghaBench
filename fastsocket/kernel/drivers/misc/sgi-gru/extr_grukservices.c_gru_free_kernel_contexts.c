
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {scalar_t__ ts_gru; } ;
struct gru_blade_state {int bs_kgts_sema; struct gru_thread_state* bs_kgts; } ;


 int GRU_MAX_BLADES ;
 scalar_t__ down_write_trylock (int *) ;
 struct gru_blade_state** gru_base ;
 int gru_unload_context (struct gru_thread_state*,int ) ;
 int kfree (struct gru_thread_state*) ;
 int up_write (int *) ;

__attribute__((used)) static int gru_free_kernel_contexts(void)
{
 struct gru_blade_state *bs;
 struct gru_thread_state *kgts;
 int bid, ret = 0;

 for (bid = 0; bid < GRU_MAX_BLADES; bid++) {
  bs = gru_base[bid];
  if (!bs)
   continue;


  if (down_write_trylock(&bs->bs_kgts_sema)) {
   kgts = bs->bs_kgts;
   if (kgts && kgts->ts_gru)
    gru_unload_context(kgts, 0);
   bs->bs_kgts = ((void*)0);
   up_write(&bs->bs_kgts_sema);
   kfree(kgts);
  } else {
   ret++;
  }
 }
 return ret;
}
