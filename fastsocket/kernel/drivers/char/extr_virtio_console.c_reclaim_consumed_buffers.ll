; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_reclaim_consumed_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_reclaim_consumed_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32 }
%struct.port_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @reclaim_consumed_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reclaim_consumed_buffers(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.port_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %17, %10
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.port_buffer* @virtqueue_get_buf(i32 %14, i32* %4)
  store %struct.port_buffer* %15, %struct.port_buffer** %3, align 8
  %16 = icmp ne %struct.port_buffer* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %19 = call i32 @free_buf(%struct.port_buffer* %18)
  %20 = load %struct.port*, %struct.port** %2, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %11

22:                                               ; preds = %9, %11
  ret void
}

declare dso_local %struct.port_buffer* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @free_buf(%struct.port_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
