; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_tx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { %struct.skge_hw* }
%struct.skge_hw = type { i64 }

@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @skge_set_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_tx_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.skge_port* @netdev_priv(%struct.net_device* %8)
  store %struct.skge_port* %9, %struct.skge_port** %6, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  %12 = load %struct.skge_hw*, %struct.skge_hw** %11, align 8
  store %struct.skge_hw* %12, %struct.skge_hw** %7, align 8
  %13 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %14 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %18, %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ethtool_op_set_tx_csum(%struct.net_device* %25, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_set_tx_csum(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
