
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* write_crb ) (struct qlcnic_adapter*,char*,int ,size_t) ;} ;


 int stub1 (struct qlcnic_adapter*,char*,int ,size_t) ;

__attribute__((used)) static inline void qlcnic_write_crb(struct qlcnic_adapter *adapter, char *buf,
        loff_t offset, size_t size)
{
 adapter->ahw->hw_ops->write_crb(adapter, buf, offset, size);
}
