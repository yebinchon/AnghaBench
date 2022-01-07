; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_remove_port_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_remove_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32 }
%struct.port_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @remove_port_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_port_data(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.port_buffer*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 2
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = call i32 @discard_port_data(%struct.port* %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.port*, %struct.port** %2, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.port_buffer* @virtqueue_detach_unused_buf(i32 %12)
  store %struct.port_buffer* %13, %struct.port_buffer** %3, align 8
  %14 = icmp ne %struct.port_buffer* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %17 = call i32 @free_buf(%struct.port_buffer* %16)
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 2
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.port*, %struct.port** %2, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.port*, %struct.port** %2, align 8
  %26 = call i32 @reclaim_consumed_buffers(%struct.port* %25)
  br label %27

27:                                               ; preds = %33, %18
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.port_buffer* @virtqueue_detach_unused_buf(i32 %30)
  store %struct.port_buffer* %31, %struct.port_buffer** %3, align 8
  %32 = icmp ne %struct.port_buffer* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %35 = call i32 @free_buf(%struct.port_buffer* %34)
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.port*, %struct.port** %2, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @discard_port_data(%struct.port*) #1

declare dso_local %struct.port_buffer* @virtqueue_detach_unused_buf(i32) #1

declare dso_local i32 @free_buf(%struct.port_buffer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @reclaim_consumed_buffers(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
