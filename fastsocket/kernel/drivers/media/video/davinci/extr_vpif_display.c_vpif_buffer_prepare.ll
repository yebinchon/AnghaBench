; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, i64, %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.common_obj* }
%struct.common_obj = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.videobuf_buffer = type { i64, i32, i32, i32, i32, i64, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"buffer_address is 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"buffer offset not aligned to 8 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @vpif_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.common_obj*, align 8
  %10 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 2
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %12, align 8
  store %struct.vpif_fh* %13, %struct.vpif_fh** %8, align 8
  %14 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %15 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %9, align 8
  %21 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %22 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %33 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %26, %3
  %50 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %51 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %54 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %55 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %49
  %59 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = call i32 @vpif_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %134

67:                                               ; preds = %58
  %68 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @vpif_uservirt_to_phys(i32 %70)
  %72 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  %74 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ISALIGNED(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %67
  br label %130

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %86 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %81
  %90 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %91 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %92 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %98 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = call i32 @ISALIGNED(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %95
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %106 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = call i32 @ISALIGNED(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %114 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  %117 = call i32 @ISALIGNED(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %122 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %120, %123
  %125 = call i32 @ISALIGNED(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119, %111, %103, %95
  br label %130

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %89, %81
  store i32 0, i32* %4, align 4
  br label %134

130:                                              ; preds = %127, %79
  %131 = call i32 @vpif_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %129, %63
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i64 @vpif_uservirt_to_phys(i32) #1

declare dso_local i32 @ISALIGNED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
