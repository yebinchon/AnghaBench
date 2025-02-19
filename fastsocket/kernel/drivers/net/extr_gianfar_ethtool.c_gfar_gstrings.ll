; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gstrings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gstrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32 }

@FSL_GIANFAR_DEV_HAS_RMON = common dso_local global i32 0, align 4
@stat_gstrings = common dso_local global i32 0, align 4
@GFAR_STATS_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@GFAR_EXTRA_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @gfar_gstrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_gstrings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %7, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSL_GIANFAR_DEV_HAS_RMON, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @stat_gstrings, align 4
  %19 = load i32, i32* @GFAR_STATS_LEN, align 4
  %20 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @memcpy(i32* %17, i32 %18, i32 %21)
  br label %30

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @stat_gstrings, align 4
  %26 = load i32, i32* @GFAR_EXTRA_STATS_LEN, align 4
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @memcpy(i32* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
