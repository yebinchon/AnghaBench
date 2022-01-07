; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.vmxnet3_adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i8*)* @vmxnet3_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.vmxnet3_adapter* %10, %struct.vmxnet3_adapter** %8, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
