
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cos_help_data {int num_of_cos; TYPE_1__* data; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int cos_bw; int pri_join_mask; int pausable; } ;


 int IS_DCBX_PFC_PRI_ONLY_PAUSE (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_dcbx_ets_disabled_entry_data(struct bnx2x *bp,
            struct cos_help_data *cos_data,
            u32 pri_join_mask)
{

 cos_data->data[0].pausable =
  IS_DCBX_PFC_PRI_ONLY_PAUSE(bp, pri_join_mask);
 cos_data->data[0].pri_join_mask = pri_join_mask;
 cos_data->data[0].cos_bw = 100;
 cos_data->num_of_cos = 1;
}
