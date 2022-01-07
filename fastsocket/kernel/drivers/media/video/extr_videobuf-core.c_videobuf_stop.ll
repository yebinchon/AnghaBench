; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_stop(%struct.videobuf_queue* %0) #0 {
  %2 = alloca %struct.videobuf_queue*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %2, align 8
  %3 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %4 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %3)
  %5 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %6 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %11 = call i32 @__videobuf_streamoff(%struct.videobuf_queue* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %14 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %19 = call i32 @__videobuf_read_stop(%struct.videobuf_queue* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %22 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %21)
  ret void
}

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @__videobuf_streamoff(%struct.videobuf_queue*) #1

declare dso_local i32 @__videobuf_read_stop(%struct.videobuf_queue*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
