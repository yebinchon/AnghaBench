; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_channel_detector_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_channel_detector_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_pattern_detector = type { i64, i32 }
%struct.channel_detector = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfs_pattern_detector*, %struct.channel_detector*)* @channel_detector_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_detector_reset(%struct.dfs_pattern_detector* %0, %struct.channel_detector* %1) #0 {
  %3 = alloca %struct.dfs_pattern_detector*, align 8
  %4 = alloca %struct.channel_detector*, align 8
  %5 = alloca i64, align 8
  store %struct.dfs_pattern_detector* %0, %struct.dfs_pattern_detector** %3, align 8
  store %struct.channel_detector* %1, %struct.channel_detector** %4, align 8
  %6 = load %struct.channel_detector*, %struct.channel_detector** %4, align 8
  %7 = icmp eq %struct.channel_detector* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %3, align 8
  %13 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.channel_detector*, %struct.channel_detector** %4, align 8
  %18 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %23, align 8
  %25 = load %struct.channel_detector*, %struct.channel_detector** %4, align 8
  %26 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %3, align 8
  %32 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %24(%struct.TYPE_2__* %30, i32 %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %10

38:                                               ; preds = %8, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
