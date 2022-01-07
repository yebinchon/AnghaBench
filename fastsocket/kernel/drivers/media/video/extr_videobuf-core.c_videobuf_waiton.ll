; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_waiton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_waiton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64 }
%struct.videobuf_buffer = type { i32, i32 }

@MAGIC_BUFFER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_waiton(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_queue*, align 8
  %7 = alloca %struct.videobuf_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %6, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAGIC_BUFFER, align 4
  %16 = call i32 @MAGIC_CHECK(i32 %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %21 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %22 = call i64 @is_state_active_or_queued(%struct.videobuf_queue* %20, %struct.videobuf_buffer* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %78

25:                                               ; preds = %19
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %4
  %29 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %30 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %35 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @mutex_is_locked(i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i1 [ false, %28 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %46 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mutex_unlock(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %57 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %58 = call i64 @is_state_active_or_queued(%struct.videobuf_queue* %56, %struct.videobuf_buffer* %57)
  %59 = call i32 @wait_event_interruptible(i32 %55, i64 %58)
  store i32 %59, i32* %11, align 4
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %65 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %66 = call i64 @is_state_active_or_queued(%struct.videobuf_queue* %64, %struct.videobuf_buffer* %65)
  %67 = call i32 @wait_event(i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %73 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @mutex_lock(i64 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %25, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i64 @is_state_active_or_queued(%struct.videobuf_queue*, %struct.videobuf_buffer*) #1

declare dso_local i64 @mutex_is_locked(i64) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @wait_event(i32, i64) #1

declare dso_local i32 @mutex_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
