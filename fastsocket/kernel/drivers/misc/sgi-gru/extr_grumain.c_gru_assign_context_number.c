
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_context_map; } ;


 int GRU_NUM_CCH ;
 int __set_bit (int,int *) ;
 int find_first_zero_bit (int *,int ) ;

__attribute__((used)) static int gru_assign_context_number(struct gru_state *gru)
{
 int ctxnum;

 ctxnum = find_first_zero_bit(&gru->gs_context_map, GRU_NUM_CCH);
 __set_bit(ctxnum, &gru->gs_context_map);
 return ctxnum;
}
