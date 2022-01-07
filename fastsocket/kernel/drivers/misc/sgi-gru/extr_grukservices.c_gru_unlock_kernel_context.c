
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_blade_state {int bs_kgts_sema; } ;


 int STAT (int ) ;
 struct gru_blade_state** gru_base ;
 int unlock_kernel_context ;
 int up_read (int *) ;

__attribute__((used)) static void gru_unlock_kernel_context(int blade_id)
{
 struct gru_blade_state *bs;

 bs = gru_base[blade_id];
 up_read(&bs->bs_kgts_sema);
 STAT(unlock_kernel_context);
}
