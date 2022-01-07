
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_cbr_map; } ;


 int GRU_CBR_AU ;
 unsigned long reserve_resources (int *,int,int ,char*) ;

unsigned long gru_reserve_cb_resources(struct gru_state *gru, int cbr_au_count,
           char *cbmap)
{
 return reserve_resources(&gru->gs_cbr_map, cbr_au_count, GRU_CBR_AU,
     cbmap);
}
