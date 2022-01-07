; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ixgb_adapter = type { i32 }

@IXGB_STATS_LEN = common dso_local global i32 0, align 4
@ixgb_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ixgb_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgb_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgb_adapter* %11, %struct.ixgb_adapter** %7, align 8
  %12 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %13 = call i32 @ixgb_update_stats(%struct.ixgb_adapter* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %51, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IXGB_STATS_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %20 = bitcast %struct.ixgb_adapter* %19 to i8*
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgb_gstrings_stats, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgb_gstrings_stats, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  br label %45

41:                                               ; preds = %18
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %14

54:                                               ; preds = %14
  ret void
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgb_update_stats(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
