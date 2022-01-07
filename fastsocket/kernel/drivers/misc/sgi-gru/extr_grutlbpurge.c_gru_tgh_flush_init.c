
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_tgh_local_shift; int gs_tgh_first_remote; int gs_blade_id; } ;


 int MAX_LOCAL_TGH ;
 int fls (int) ;
 int max (int ,int) ;
 int uv_blade_nr_possible_cpus (int ) ;

void gru_tgh_flush_init(struct gru_state *gru)
{
 int cpus, shift = 0, n;

 cpus = uv_blade_nr_possible_cpus(gru->gs_blade_id);


 if (cpus) {
  n = 1 << fls(cpus - 1);







  shift = max(0, fls(n - 1) - fls(MAX_LOCAL_TGH - 1));
 }
 gru->gs_tgh_local_shift = shift;


 gru->gs_tgh_first_remote = (cpus + (1 << shift) - 1) >> shift;

}
