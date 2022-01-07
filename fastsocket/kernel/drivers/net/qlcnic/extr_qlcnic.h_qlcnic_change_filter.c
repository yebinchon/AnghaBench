
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* change_l2_filter ) (struct qlcnic_adapter*,int *,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int *,int ) ;

__attribute__((used)) static inline void qlcnic_change_filter(struct qlcnic_adapter *adapter,
     u64 *addr, u16 id)
{
 adapter->ahw->hw_ops->change_l2_filter(adapter, addr, id);
}
