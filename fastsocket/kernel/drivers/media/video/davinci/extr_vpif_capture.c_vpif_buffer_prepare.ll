; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.videobuf_buffer = type { i64, i32, i32, i32, i32, i64, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpif_buffer_prepare\0A\00", align 1
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"buffer address is 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"buffer_prepare:offset is not aligned to 8 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @vpif_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 1
  %14 = load %struct.vpif_fh*, %struct.vpif_fh** %13, align 8
  store %struct.vpif_fh* %14, %struct.vpif_fh** %8, align 8
  %15 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %16 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %15, i32 0, i32 0
  %17 = load %struct.channel_obj*, %struct.channel_obj** %16, align 8
  store %struct.channel_obj* %17, %struct.channel_obj** %9, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = call i32 @vpif_dbg(i32 2, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 0
  %22 = load %struct.common_obj*, %struct.common_obj** %21, align 8
  %23 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %22, i64 %23
  store %struct.common_obj* %24, %struct.common_obj** %10, align 8
  %25 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %26 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %3
  %31 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %32 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %37 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %30, %3
  %54 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %55 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %58 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %59 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %53
  %63 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @debug, align 4
  %69 = call i32 @vpif_dbg(i32 1, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %134

72:                                               ; preds = %62
  %73 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @vpif_uservirt_to_phys(i64 %75)
  %77 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  %79 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @IS_ALIGNED(i64 %81, i32 8)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %129

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  %90 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %91 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %86
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %97 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  %100 = call i32 @IS_ALIGNED(i64 %99, i32 8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %94
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %105 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  %108 = call i32 @IS_ALIGNED(i64 %107, i32 8)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %102
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %113 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %111, %114
  %116 = call i32 @IS_ALIGNED(i64 %115, i32 8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %121 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %119, %122
  %124 = call i32 @IS_ALIGNED(i64 %123, i32 8)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118, %110, %102, %94
  br label %129

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %86
  store i32 0, i32* %4, align 4
  br label %134

129:                                              ; preds = %126, %84
  %130 = load i32, i32* @debug, align 4
  %131 = call i32 @vpif_dbg(i32 1, i32 %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %128, %67
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @vpif_uservirt_to_phys(i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
