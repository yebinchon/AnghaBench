; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_is_state_active_or_queued.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_is_state_active_or_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.videobuf_buffer = type { i64 }

@VIDEOBUF_ACTIVE = common dso_local global i64 0, align 8
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @is_state_active_or_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_state_active_or_queued(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %7 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %8 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ false, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %27 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
