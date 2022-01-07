
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* change_macvlan ) (struct qlcnic_adapter*,int *,int ,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int *,int ,int ) ;

__attribute__((used)) static inline int qlcnic_sre_macaddr_change(struct qlcnic_adapter *adapter,
         u8 *addr, u16 id, u8 cmd)
{
 return adapter->ahw->hw_ops->change_macvlan(adapter, addr, id, cmd);
}
