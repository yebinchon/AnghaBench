
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_active_contexts; int gs_dsr_map; int gs_cbr_map; } ;


 int hweight64 (int ) ;

__attribute__((used)) static int check_gru_resources(struct gru_state *gru, int cbr_au_count,
          int dsr_au_count, int max_active_contexts)
{
 return hweight64(gru->gs_cbr_map) >= cbr_au_count
  && hweight64(gru->gs_dsr_map) >= dsr_au_count
  && gru->gs_active_contexts < max_active_contexts;
}
