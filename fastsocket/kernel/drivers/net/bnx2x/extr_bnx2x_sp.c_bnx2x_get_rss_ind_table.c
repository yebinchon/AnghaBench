
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x_rss_config_obj {int ind_table; } ;


 int memcpy (int *,int ,int) ;

void bnx2x_get_rss_ind_table(struct bnx2x_rss_config_obj *rss_obj,
        u8 *ind_table)
{
 memcpy(ind_table, rss_obj->ind_table, sizeof(rss_obj->ind_table));
}
