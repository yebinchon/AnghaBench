; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_stats = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bcm_enet_priv = type { i32 }

@BCM_ENET_STATS_LEN = common dso_local global i32 0, align 4
@bcm_enet_gstrings_stats = common dso_local global %struct.bcm_enet_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @bcm_enet_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm_enet_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_enet_stats*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bcm_enet_priv* %12, %struct.bcm_enet_priv** %7, align 8
  %13 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %14 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %17 = call i32 @update_mib_counters(%struct.bcm_enet_priv* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %53, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BCM_ENET_STATS_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** @bcm_enet_gstrings_stats, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %23, i64 %25
  store %struct.bcm_enet_stats* %26, %struct.bcm_enet_stats** %9, align 8
  %27 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %28 = bitcast %struct.bcm_enet_priv* %27 to i8*
  %29 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %9, align 8
  %30 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %10, align 8
  %34 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %9, align 8
  %35 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load i8*, i8** %10, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  br label %47

43:                                               ; preds = %22
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %58 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_mib_counters(%struct.bcm_enet_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
