; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_channel_detector_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pattern_detector.c_channel_detector_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_detector = type { i32, %struct.pri_detector**, i32 }
%struct.pri_detector = type { i32 }
%struct.dfs_pattern_detector = type { i32, i32, %struct.radar_detector_specs*, i32 }
%struct.radar_detector_specs = type { i32 }
%struct.ath_common = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to allocate channel_detector for freq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.channel_detector* (%struct.dfs_pattern_detector*, i32)* @channel_detector_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.channel_detector* @channel_detector_create(%struct.dfs_pattern_detector* %0, i32 %1) #0 {
  %3 = alloca %struct.channel_detector*, align 8
  %4 = alloca %struct.dfs_pattern_detector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.channel_detector*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.radar_detector_specs*, align 8
  %11 = alloca %struct.pri_detector*, align 8
  store %struct.dfs_pattern_detector* %0, %struct.dfs_pattern_detector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %13 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(i32 %14)
  store %struct.ath_common* %15, %struct.ath_common** %9, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.channel_detector* @kmalloc(i32 24, i32 %16)
  store %struct.channel_detector* %17, %struct.channel_detector** %8, align 8
  %18 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %19 = icmp eq %struct.channel_detector* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %23 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %27 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %29 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.pri_detector** @kzalloc(i64 %33, i32 %34)
  %36 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %37 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %36, i32 0, i32 1
  store %struct.pri_detector** %35, %struct.pri_detector*** %37, align 8
  %38 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %39 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %38, i32 0, i32 1
  %40 = load %struct.pri_detector**, %struct.pri_detector*** %39, align 8
  %41 = icmp eq %struct.pri_detector** %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %79

43:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %47 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %53 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %52, i32 0, i32 2
  %54 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %54, i64 %55
  store %struct.radar_detector_specs* %56, %struct.radar_detector_specs** %10, align 8
  %57 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %10, align 8
  %58 = call %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs* %57)
  store %struct.pri_detector* %58, %struct.pri_detector** %11, align 8
  %59 = load %struct.pri_detector*, %struct.pri_detector** %11, align 8
  %60 = icmp eq %struct.pri_detector* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %79

62:                                               ; preds = %51
  %63 = load %struct.pri_detector*, %struct.pri_detector** %11, align 8
  %64 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %65 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %64, i32 0, i32 1
  %66 = load %struct.pri_detector**, %struct.pri_detector*** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.pri_detector*, %struct.pri_detector** %66, i64 %67
  store %struct.pri_detector* %63, %struct.pri_detector** %68, align 8
  br label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %74 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %73, i32 0, i32 0
  %75 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %76 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %75, i32 0, i32 1
  %77 = call i32 @list_add(i32* %74, i32* %76)
  %78 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  store %struct.channel_detector* %78, %struct.channel_detector** %3, align 8
  br label %87

79:                                               ; preds = %61, %42, %20
  %80 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %81 = load i32, i32* @DFS, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ath_dbg(%struct.ath_common* %80, i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %85 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %86 = call i32 @channel_detector_exit(%struct.dfs_pattern_detector* %84, %struct.channel_detector* %85)
  store %struct.channel_detector* null, %struct.channel_detector** %3, align 8
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.channel_detector*, %struct.channel_detector** %3, align 8
  ret %struct.channel_detector* %88
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local %struct.channel_detector* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.pri_detector** @kzalloc(i64, i32) #1

declare dso_local %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @channel_detector_exit(%struct.dfs_pattern_detector*, %struct.channel_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
