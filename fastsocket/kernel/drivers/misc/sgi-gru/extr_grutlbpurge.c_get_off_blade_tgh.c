
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_tgh_first_remote; } ;


 int GRU_NUM_TGH ;
 int gru_random () ;

__attribute__((used)) static inline int get_off_blade_tgh(struct gru_state *gru)
{
 int n;

 n = GRU_NUM_TGH - gru->gs_tgh_first_remote;
 n = gru_random() % n;
 n += gru->gs_tgh_first_remote;
 return n;
}
