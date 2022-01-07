; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, i32** }
%struct.v4l2_buffer = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"querybuf: Wrong type.\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"querybuf: index out of range.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"querybuf: buffer is null.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_querybuf(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %8)
  %10 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %14 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VIDEO_MAX_FRAME, align 8
  %27 = icmp uge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %35 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* null, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %63

48:                                               ; preds = %33
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %51 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %52 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %60 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @videobuf_status(%struct.videobuf_queue* %49, %struct.v4l2_buffer* %50, i32* %58, i64 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %48, %46, %31, %20
  %64 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %65 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @videobuf_status(%struct.videobuf_queue*, %struct.v4l2_buffer*, i32*, i64) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
