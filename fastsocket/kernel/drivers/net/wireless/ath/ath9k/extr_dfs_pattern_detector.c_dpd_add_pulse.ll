; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_dpd_add_pulse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_dpd_add_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_pattern_detector = type { i64, i64, i64, i32 }
%struct.pulse_event = type { i64, i32 }
%struct.channel_detector = type { %struct.pri_detector** }
%struct.pri_detector = type { %struct.TYPE_2__*, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)* }
%struct.TYPE_2__ = type { i32 }
%struct.pri_sequence = type { i32, i32, i32 }

@NL80211_DFS_UNSET = common dso_local global i64 0, align 8
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DFS: radar found on freq=%d: id=%d, pri=%d, count=%d, count_false=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfs_pattern_detector*, %struct.pulse_event*)* @dpd_add_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpd_add_pulse(%struct.dfs_pattern_detector* %0, %struct.pulse_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dfs_pattern_detector*, align 8
  %5 = alloca %struct.pulse_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.channel_detector*, align 8
  %8 = alloca %struct.pri_detector*, align 8
  %9 = alloca %struct.pri_sequence*, align 8
  store %struct.dfs_pattern_detector* %0, %struct.dfs_pattern_detector** %4, align 8
  store %struct.pulse_event* %1, %struct.pulse_event** %5, align 8
  %10 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %11 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_DFS_UNSET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

16:                                               ; preds = %2
  %17 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %18 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %19 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.channel_detector* @channel_detector_get(%struct.dfs_pattern_detector* %17, i32 %20)
  store %struct.channel_detector* %21, %struct.channel_detector** %7, align 8
  %22 = load %struct.channel_detector*, %struct.channel_detector** %7, align 8
  %23 = icmp eq %struct.channel_detector* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %95

25:                                               ; preds = %16
  %26 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %27 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %30 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %32 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %35 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %40 = call i32 @dpd_reset(%struct.dfs_pattern_detector* %39)
  br label %41

41:                                               ; preds = %38, %25
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %45 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %42
  %49 = load %struct.channel_detector*, %struct.channel_detector** %7, align 8
  %50 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %49, i32 0, i32 0
  %51 = load %struct.pri_detector**, %struct.pri_detector*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.pri_detector*, %struct.pri_detector** %51, i64 %52
  %54 = load %struct.pri_detector*, %struct.pri_detector** %53, align 8
  store %struct.pri_detector* %54, %struct.pri_detector** %8, align 8
  %55 = load %struct.pri_detector*, %struct.pri_detector** %8, align 8
  %56 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %55, i32 0, i32 1
  %57 = load %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)*, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)** %56, align 8
  %58 = load %struct.pri_detector*, %struct.pri_detector** %8, align 8
  %59 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %60 = call %struct.pri_sequence* %57(%struct.pri_detector* %58, %struct.pulse_event* %59)
  store %struct.pri_sequence* %60, %struct.pri_sequence** %9, align 8
  %61 = load %struct.pri_sequence*, %struct.pri_sequence** %9, align 8
  %62 = icmp ne %struct.pri_sequence* %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %48
  %64 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %65 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ath9k_hw_common(i32 %66)
  %68 = load i32, i32* @DFS, align 4
  %69 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %70 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pri_detector*, %struct.pri_detector** %8, align 8
  %73 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pri_sequence*, %struct.pri_sequence** %9, align 8
  %78 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pri_sequence*, %struct.pri_sequence** %9, align 8
  %81 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pri_sequence*, %struct.pri_sequence** %9, align 8
  %84 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ath_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %76, i32 %79, i32 %82, i32 %85)
  %87 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %88 = load %struct.channel_detector*, %struct.channel_detector** %7, align 8
  %89 = call i32 @channel_detector_reset(%struct.dfs_pattern_detector* %87, %struct.channel_detector* %88)
  store i32 1, i32* %3, align 4
  br label %95

90:                                               ; preds = %48
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %42

94:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %63, %24, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.channel_detector* @channel_detector_get(%struct.dfs_pattern_detector*, i32) #1

declare dso_local i32 @dpd_reset(%struct.dfs_pattern_detector*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @channel_detector_reset(%struct.dfs_pattern_detector*, %struct.channel_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
