
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_table {int search_depth; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void efx_filter_table_reset_search_depth(struct efx_filter_table *table)
{
 memset(table->search_depth, 0, sizeof(table->search_depth));
}
