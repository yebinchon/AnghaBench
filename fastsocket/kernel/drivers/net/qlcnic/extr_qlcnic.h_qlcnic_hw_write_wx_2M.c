
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* write_reg ) (struct qlcnic_adapter*,int ,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static inline int qlcnic_hw_write_wx_2M(struct qlcnic_adapter *adapter,
     ulong off, u32 data)
{
 return adapter->ahw->hw_ops->write_reg(adapter, off, data);
}
