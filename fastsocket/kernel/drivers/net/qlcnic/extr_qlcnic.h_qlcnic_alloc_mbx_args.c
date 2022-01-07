
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* alloc_mbx_args ) (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;} ;


 int stub1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;

__attribute__((used)) static inline int qlcnic_alloc_mbx_args(struct qlcnic_cmd_args *mbx,
     struct qlcnic_adapter *adapter, u32 arg)
{
 return adapter->ahw->hw_ops->alloc_mbx_args(mbx, adapter, arg);
}
