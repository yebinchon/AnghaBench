
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int dummy; } ;


 int GRU_CHIPLETS_PER_BLADE ;
 int GRU_MAX_BLADES ;
 int free_pages (unsigned long,int) ;
 int get_order (int) ;
 scalar_t__* gru_base ;

__attribute__((used)) static void gru_free_tables(void)
{
 int bid;
 int order = get_order(sizeof(struct gru_state) *
         GRU_CHIPLETS_PER_BLADE);

 for (bid = 0; bid < GRU_MAX_BLADES; bid++)
  free_pages((unsigned long)gru_base[bid], order);
}
