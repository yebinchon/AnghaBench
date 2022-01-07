; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ixgbevf_adapter = type { i32 }

@IXGBE_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbe_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @ixgbevf_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbevf_adapter* %13, %struct.ixgbevf_adapter** %7, align 8
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %15 = call i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %111, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IXGBE_GLOBAL_STATS_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %114

20:                                               ; preds = %16
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %22 = bitcast %struct.ixgbevf_adapter* %21 to i8*
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %22, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %32 = bitcast %struct.ixgbevf_adapter* %31 to i8*
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %32, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %42 = bitcast %struct.ixgbevf_adapter* %41 to i8*
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %42, i64 %49
  store i8* %50, i8** %11, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %59, label %63

59:                                               ; preds = %20
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  br label %67

63:                                               ; preds = %20
  %64 = load i8*, i8** %9, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i8*, i8** %10, align 8
  %79 = bitcast i8* %78 to i64*
  %80 = load i64, i64* %79, align 8
  br label %85

81:                                               ; preds = %67
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i64 [ %80, %77 ], [ %84, %81 ]
  %87 = sub nsw i64 %68, %86
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i8*, i8** %11, align 8
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8
  br label %104

100:                                              ; preds = %85
  %101 = load i8*, i8** %11, align 8
  %102 = bitcast i8* %101 to i64*
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i64 [ %99, %96 ], [ %103, %100 ]
  %106 = add nsw i64 %87, %105
  %107 = load i64*, i64** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %106, i64* %110, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %16

114:                                              ; preds = %16
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
