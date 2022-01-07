; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.efx_nic = type { i32 }
%struct.ethtool_string = type { i32 }

@EFX_ETHTOOL_NUM_STATS = common dso_local global i32 0, align 4
@efx_ethtool_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @efx_ethtool_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ethtool_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca %struct.ethtool_string*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.efx_nic* %11, %struct.efx_nic** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.ethtool_string*
  store %struct.ethtool_string* %13, %struct.ethtool_string** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %42 [
    i32 129, label %15
    i32 128, label %38
  ]

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @EFX_ETHTOOL_NUM_STATS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.ethtool_string*, %struct.ethtool_string** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %21, i64 %23
  %25 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @efx_ethtool_stats, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlcpy(i32 %26, i32 %32, i32 4)
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %16

37:                                               ; preds = %16
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %40 = load %struct.ethtool_string*, %struct.ethtool_string** %8, align 8
  %41 = call i32 @efx_ethtool_fill_self_tests(%struct.efx_nic* %39, i32* null, %struct.ethtool_string* %40, i32* null)
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %38, %37
  ret void
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @efx_ethtool_fill_self_tests(%struct.efx_nic*, i32*, %struct.ethtool_string*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
