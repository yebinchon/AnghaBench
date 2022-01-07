
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdc_table {int * rxdma_channel; } ;
struct niu_rdc_tables {int first_table_num; int num_tables; struct rdc_table* tables; } ;
struct niu {size_t port; TYPE_1__* parent; } ;
struct TYPE_2__ {int * rdc_default; struct niu_rdc_tables* rdc_group_cfg; } ;


 int DEF_RDC (size_t) ;
 int NIU_RDC_TABLE_SLOTS ;
 int RDC_TBL (int,int) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static void niu_init_rdc_groups(struct niu *np)
{
 struct niu_rdc_tables *tp = &np->parent->rdc_group_cfg[np->port];
 int i, first_table_num = tp->first_table_num;

 for (i = 0; i < tp->num_tables; i++) {
  struct rdc_table *tbl = &tp->tables[i];
  int this_table = first_table_num + i;
  int slot;

  for (slot = 0; slot < NIU_RDC_TABLE_SLOTS; slot++)
   nw64(RDC_TBL(this_table, slot),
        tbl->rxdma_channel[slot]);
 }

 nw64(DEF_RDC(np->port), np->parent->rdc_default[np->port]);
}
