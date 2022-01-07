; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_rx_buff_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_rx_buff_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i64 }

@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@OPTION_JUMBO_ENABLE = common dso_local global i32 0, align 4
@PKT_BUFF_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @amd8111e_set_rx_buff_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_set_rx_buff_len(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.amd8111e_priv* %6, %struct.amd8111e_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ETH_DATA_LEN, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 10
  %19 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %20 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @OPTION_JUMBO_ENABLE, align 4
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %36

26:                                               ; preds = %1
  %27 = load i64, i64* @PKT_BUFF_SZ, align 8
  %28 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %29 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @OPTION_JUMBO_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %33 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %26, %13
  ret void
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
