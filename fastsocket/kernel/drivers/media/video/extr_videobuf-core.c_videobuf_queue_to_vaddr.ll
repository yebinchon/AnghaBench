; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_queue_to_vaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_queue_to_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.videobuf_buffer*)* }
%struct.videobuf_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @videobuf_queue_to_vaddr(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %5, align 8
  %6 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %7 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8* (%struct.videobuf_buffer*)*, i8* (%struct.videobuf_buffer*)** %9, align 8
  %11 = icmp ne i8* (%struct.videobuf_buffer*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %14 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8* (%struct.videobuf_buffer*)*, i8* (%struct.videobuf_buffer*)** %16, align 8
  %18 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %19 = call i8* %17(%struct.videobuf_buffer* %18)
  store i8* %19, i8** %3, align 8
  br label %21

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
