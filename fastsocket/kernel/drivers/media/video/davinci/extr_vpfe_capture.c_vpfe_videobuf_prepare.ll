; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_videobuf_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_videobuf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { %struct.vpfe_device* }
%struct.vpfe_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.videobuf_buffer = type { i64, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpfe_buffer_prepare\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @vpfe_videobuf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_videobuf_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vpfe_fh*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.vpfe_fh*, %struct.vpfe_fh** %10, align 8
  store %struct.vpfe_fh* %11, %struct.vpfe_fh** %7, align 8
  %12 = load %struct.vpfe_fh*, %struct.vpfe_fh** %7, align 8
  %13 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %12, i32 0, i32 0
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %13, align 8
  store %struct.vpfe_device* %14, %struct.vpfe_device** %8, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 1
  %18 = call i32 @v4l2_dbg(i32 1, i32 %15, i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %20 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %3
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %34 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %42 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %24, %3
  %53 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %54 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
