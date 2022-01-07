; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_stream_next_buffer_check_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_stream_next_buffer_check_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"next_buffer: Not streaming\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"next_buffer: no buffers to dequeue\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"next_buffer: waiting on buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32)* @stream_next_buffer_check_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_next_buffer_check_queue(%struct.videobuf_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %53, %2
  %7 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %8 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %55

15:                                               ; preds = %6
  %16 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %17 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %16, i32 0, i32 1
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %55

27:                                               ; preds = %20
  %28 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %30 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %29)
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %32 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %35 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %34, i32 0, i32 1
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %40 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %27
  %45 = phi i1 [ true, %27 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event_interruptible(i32 %33, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %49 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %44
  br label %6

54:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %52, %23, %11
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
