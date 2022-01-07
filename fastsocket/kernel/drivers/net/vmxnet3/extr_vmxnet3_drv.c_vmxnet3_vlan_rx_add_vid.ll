; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_VLAN_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @vmxnet3_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_vlan_rx_add_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %2
  %17 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @VMXNET3_SET_VFTABLE_ENTRY(i32* %24, i32 %25)
  %27 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %32 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %33 = load i32, i32* @VMXNET3_CMD_UPDATE_VLAN_FILTERS, align 4
  %34 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %31, i32 %32, i32 %33)
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @VMXNET3_SET_VFTABLE_ENTRY(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
