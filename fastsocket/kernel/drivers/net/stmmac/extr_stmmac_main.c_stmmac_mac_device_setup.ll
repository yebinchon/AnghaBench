; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_mac_device_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_mac_device_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.stmmac_priv = type { i64, i32, %struct.mac_device_info*, i64 }
%struct.mac_device_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@PMT_SUPPORTED = common dso_local global i64 0, align 8
@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @stmmac_mac_device_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_mac_device_setup(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mac_device_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.stmmac_priv* %8, %struct.stmmac_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.mac_device_info* @gmac_setup(i64 %17)
  store %struct.mac_device_info* %18, %struct.mac_device_info** %6, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.mac_device_info* @mac100_setup(i64 %20)
  store %struct.mac_device_info* %21, %struct.mac_device_info** %6, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.mac_device_info*, %struct.mac_device_info** %6, align 8
  %24 = icmp ne %struct.mac_device_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %22
  %29 = load %struct.mac_device_info*, %struct.mac_device_info** %6, align 8
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 2
  store %struct.mac_device_info* %29, %struct.mac_device_info** %31, align 8
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 2
  %34 = load %struct.mac_device_info*, %struct.mac_device_info** %33, align 8
  %35 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PMT_SUPPORTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @WAKE_MAGIC, align 4
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %28
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mac_device_info* @gmac_setup(i64) #1

declare dso_local %struct.mac_device_info* @mac100_setup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
