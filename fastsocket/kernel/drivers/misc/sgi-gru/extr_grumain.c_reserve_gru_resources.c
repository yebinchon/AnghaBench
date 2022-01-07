
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_dsr_au_count; int ts_dsr_map; int ts_cbr_idx; int ts_cbr_au_count; int ts_cbr_map; } ;
struct gru_state {int gs_active_contexts; } ;


 int gru_reserve_cb_resources (struct gru_state*,int ,int ) ;
 int gru_reserve_ds_resources (struct gru_state*,int ,int *) ;

__attribute__((used)) static void reserve_gru_resources(struct gru_state *gru,
      struct gru_thread_state *gts)
{
 gru->gs_active_contexts++;
 gts->ts_cbr_map =
     gru_reserve_cb_resources(gru, gts->ts_cbr_au_count,
         gts->ts_cbr_idx);
 gts->ts_dsr_map =
     gru_reserve_ds_resources(gru, gts->ts_dsr_au_count, ((void*)0));
}
