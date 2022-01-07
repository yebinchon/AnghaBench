
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int num_intrs; } ;
struct vmxnet3_adapter {TYPE_4__ intr; TYPE_3__* shared; } ;
struct TYPE_5__ {int intrCtrl; } ;
struct TYPE_6__ {TYPE_1__ intrConf; } ;
struct TYPE_7__ {TYPE_2__ devRead; } ;


 int VMXNET3_IC_DISABLE_ALL ;
 int cpu_to_le32 (int ) ;
 int vmxnet3_disable_intr (struct vmxnet3_adapter*,int) ;

__attribute__((used)) static void
vmxnet3_disable_all_intrs(struct vmxnet3_adapter *adapter)
{
 int i;

 adapter->shared->devRead.intrConf.intrCtrl |=
     cpu_to_le32(VMXNET3_IC_DISABLE_ALL);
 for (i = 0; i < adapter->intr.num_intrs; i++)
  vmxnet3_disable_intr(adapter, i);
}
