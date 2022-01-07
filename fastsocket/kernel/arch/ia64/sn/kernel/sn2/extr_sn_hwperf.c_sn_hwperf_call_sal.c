
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sn_hwperf_op_info {int ret; int v0; scalar_t__ p; TYPE_1__* a; int op; } ;
struct TYPE_2__ {int sz; int arg; } ;


 int ia64_sn_hwperf_op (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sn_hwperf_master_nasid ;

__attribute__((used)) static void sn_hwperf_call_sal(void *info)
{
 struct sn_hwperf_op_info *op_info = info;
 int r;

 r = ia64_sn_hwperf_op(sn_hwperf_master_nasid, op_info->op,
        op_info->a->arg, op_info->a->sz,
        (u64) op_info->p, 0, 0, op_info->v0);
 op_info->ret = r;
}
