; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.myri10ge_priv = type { i64 }

@MXGEFW_FLAGS_CKSUM = common dso_local global i64 0, align 8
@ETH_FLAG_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @myri10ge_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_set_rx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.myri10ge_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.myri10ge_priv* %9, %struct.myri10ge_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @MXGEFW_FLAGS_CKSUM, align 8
  %14 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %15 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ethtool_op_get_flags(%struct.net_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ETH_FLAG_LRO, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @ethtool_op_set_flags(%struct.net_device* %19, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %26 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %12
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_get_flags(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_set_flags(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
