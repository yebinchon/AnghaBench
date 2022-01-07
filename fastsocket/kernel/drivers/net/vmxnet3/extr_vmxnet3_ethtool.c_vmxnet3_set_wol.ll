; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @vmxnet3_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.vmxnet3_adapter* %8, %struct.vmxnet3_adapter** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_PHY, align 4
  %13 = load i32, i32* @WAKE_MCAST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_BCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_set_wakeup_enable(i32* %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
