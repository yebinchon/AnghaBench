
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {size_t curr_state; size_t prev_state; int * name; } ;
struct TYPE_5__ {TYPE_1__ idc; } ;


 int dev_info (int *,char*,int ,int ) ;

__attribute__((used)) static void qlcnic_83xx_idc_log_state_history(struct qlcnic_adapter *adapter)
{
 u32 cur, prev;
 cur = adapter->ahw->idc.curr_state;
 prev = adapter->ahw->idc.prev_state;

 dev_info(&adapter->pdev->dev,
   "current state  = %s,  prev state = %s\n",
   adapter->ahw->idc.name[cur],
   adapter->ahw->idc.name[prev]);
}
