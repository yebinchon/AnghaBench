; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_update_std_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_update_std_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_channel_config_params = type { i32, i32, i32, i32 }
%struct.channel_obj = type { %struct.video_obj, %struct.vpif_params, %struct.common_obj* }
%struct.video_obj = type { i32 }
%struct.vpif_params = type { %struct.TYPE_8__, %struct.vpif_channel_config_params }
%struct.TYPE_8__ = type { i32, i32 }
%struct.common_obj = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vpif_update_std_info\0A\00", align 1
@ch_params = common dso_local global %struct.vpif_channel_config_params* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*)* @vpif_update_std_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_update_std_info(%struct.channel_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca %struct.common_obj*, align 8
  %5 = alloca %struct.vpif_params*, align 8
  %6 = alloca %struct.vpif_channel_config_params*, align 8
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  %8 = alloca %struct.video_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  %10 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %11 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %10, i32 0, i32 2
  %12 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %13 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %14 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %12, i64 %13
  store %struct.common_obj* %14, %struct.common_obj** %4, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 1
  store %struct.vpif_params* %16, %struct.vpif_params** %5, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 0
  store %struct.video_obj* %18, %struct.video_obj** %8, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = call i32 @vpif_dbg(i32 2, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %22 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %21, i32 0, i32 1
  store %struct.vpif_channel_config_params* %22, %struct.vpif_channel_config_params** %7, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %1
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.vpif_channel_config_params* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %29, i64 %31
  store %struct.vpif_channel_config_params* %32, %struct.vpif_channel_config_params** %6, align 8
  %33 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %34 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.video_obj*, %struct.video_obj** %8, align 8
  %37 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %43 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %44 = call i32 @memcpy(%struct.vpif_channel_config_params* %42, %struct.vpif_channel_config_params* %43, i32 16)
  br label %49

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %41, %23
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @ch_params, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.vpif_channel_config_params* %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %104

57:                                               ; preds = %49
  %58 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %59 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %62 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %60, i32* %65, align 4
  %66 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %67 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %70 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %72 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %80 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %83 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %85 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %88 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %93 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %96 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %99 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %102 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %57, %54
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.vpif_channel_config_params*) #1

declare dso_local i32 @memcpy(%struct.vpif_channel_config_params*, %struct.vpif_channel_config_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
