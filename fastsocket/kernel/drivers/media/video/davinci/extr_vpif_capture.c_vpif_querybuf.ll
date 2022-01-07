; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vpif_querybuf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vpif_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.vpif_fh*
  store %struct.vpif_fh* %12, %struct.vpif_fh** %8, align 8
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %14 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %13, i32 0, i32 0
  %15 = load %struct.channel_obj*, %struct.channel_obj** %14, align 8
  store %struct.channel_obj* %15, %struct.channel_obj** %9, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %10, align 8
  %21 = load i32, i32* @debug, align 4
  %22 = call i32 @vpif_dbg(i32 2, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %36 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @debug, align 4
  %42 = call i32 @vpif_dbg(i32 1, i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 1
  %48 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %49 = call i32 @videobuf_querybuf(i32* %47, %struct.v4l2_buffer* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %40, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @videobuf_querybuf(i32*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
