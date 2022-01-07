; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_get_std_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_get_std_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_channel_config_params = type { i32, i32, i32 }
%struct.channel_obj = type { %struct.common_obj*, %struct.vpif_params, %struct.video_obj }
%struct.common_obj = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vpif_params = type { %struct.vpif_channel_config_params }
%struct.video_obj = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ch_params = common dso_local global %struct.vpif_channel_config_params* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pixel details: Width = %d,Height = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*)* @vpif_get_std_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_get_std_info(%struct.channel_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca %struct.common_obj*, align 8
  %5 = alloca %struct.video_obj*, align 8
  %6 = alloca %struct.vpif_params*, align 8
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  %8 = alloca %struct.vpif_channel_config_params*, align 8
  %9 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  %10 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %11 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %10, i32 0, i32 0
  %12 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %13 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %14 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %12, i64 %13
  store %struct.common_obj* %14, %struct.common_obj** %4, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 2
  store %struct.video_obj* %16, %struct.video_obj** %5, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 1
  store %struct.vpif_params* %18, %struct.vpif_params** %6, align 8
  %19 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %20 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %19, i32 0, i32 0
  store %struct.vpif_channel_config_params* %20, %struct.vpif_channel_config_params** %7, align 8
  %21 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %22 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %25 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %27 = icmp ne %struct.vpif_channel_config_params* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %111

29:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.vpif_channel_config_params* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %36, i64 %38
  store %struct.vpif_channel_config_params* %39, %struct.vpif_channel_config_params** %8, align 8
  %40 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %8, align 8
  %41 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %44 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %50 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %8, align 8
  %51 = call i32 @memcpy(%struct.vpif_channel_config_params* %49, %struct.vpif_channel_config_params* %50, i32 12)
  br label %56

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %30

56:                                               ; preds = %48, %30
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.vpif_channel_config_params* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %111

62:                                               ; preds = %56
  %63 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %64 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %67 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %65, i32* %70, align 4
  %71 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %72 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* @debug, align 4
  %80 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %87 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @vpif_dbg(i32 1, i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %91)
  %93 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %94 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %97 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %96, i32 0, i32 0
  %98 = load %struct.common_obj*, %struct.common_obj** %97, align 8
  %99 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %100 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %98, i64 %99
  %101 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 4
  %102 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %103 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %106 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %105, i32 0, i32 0
  %107 = load %struct.common_obj*, %struct.common_obj** %106, align 8
  %108 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %109 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %107, i64 %108
  %110 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 4
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %62, %61, %28
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @ARRAY_SIZE(%struct.vpif_channel_config_params*) #1

declare dso_local i32 @memcpy(%struct.vpif_channel_config_params*, %struct.vpif_channel_config_params*, i32) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
