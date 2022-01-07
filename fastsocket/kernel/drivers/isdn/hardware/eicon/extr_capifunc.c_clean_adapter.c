
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_8__ {struct TYPE_8__* coef_table; struct TYPE_8__* flag_table; } ;
struct TYPE_7__ {int li_channels; int li_base; scalar_t__ request; scalar_t__ plci; } ;
typedef int LI_CONFIG ;
typedef TYPE_1__ DIVA_CAPI_ADAPTER ;


 TYPE_1__* adapter ;
 TYPE_3__* li_config_table ;
 int li_total_channels ;
 int list_add (struct list_head*,struct list_head*) ;
 int max_adapter ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void clean_adapter(int id, struct list_head *free_mem_q)
{
 DIVA_CAPI_ADAPTER *a;
 int i, k;

 a = &adapter[id];
 k = li_total_channels - a->li_channels;
 if (k == 0) {
  if (li_config_table) {
   list_add((struct list_head *)li_config_table, free_mem_q);
   li_config_table = ((void*)0);
  }
 } else {
  if (a->li_base < k) {
   memmove(&li_config_table[a->li_base],
    &li_config_table[a->li_base + a->li_channels],
    (k - a->li_base) * sizeof(LI_CONFIG));
   for (i = 0; i < k; i++) {
    memmove(&li_config_table[i].flag_table[a->li_base],
     &li_config_table[i].flag_table[a->li_base + a->li_channels],
     k - a->li_base);
    memmove(&li_config_table[i].
     coef_table[a->li_base],
     &li_config_table[i].coef_table[a->li_base + a->li_channels],
     k - a->li_base);
   }
  }
 }
 li_total_channels = k;
 for (i = id; i < max_adapter; i++) {
  if (adapter[i].request)
   adapter[i].li_base -= a->li_channels;
 }
 if (a->plci)
  list_add((struct list_head *)a->plci, free_mem_q);

 memset(a, 0x00, sizeof(DIVA_CAPI_ADAPTER));
 while ((max_adapter != 0) && !adapter[max_adapter - 1].request)
  max_adapter--;
}
