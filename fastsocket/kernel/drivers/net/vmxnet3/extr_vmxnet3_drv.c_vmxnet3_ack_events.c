
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmxnet3_adapter {int dummy; } ;


 int VMXNET3_REG_ECR ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;

__attribute__((used)) static void
vmxnet3_ack_events(struct vmxnet3_adapter *adapter, u32 events)
{
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_ECR, events);
}
