
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int tid_tab; } ;


 int cxgb_free_mem (int ) ;

__attribute__((used)) static void free_tid_maps(struct tid_info *t)
{
 cxgb_free_mem(t->tid_tab);
}
