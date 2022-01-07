; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_remove_controlq_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_remove_controlq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i32 }
%struct.port_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ports_device*)* @remove_controlq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_controlq_data(%struct.ports_device* %0) #0 {
  %2 = alloca %struct.ports_device*, align 8
  %3 = alloca %struct.port_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.ports_device* %0, %struct.ports_device** %2, align 8
  %5 = load %struct.ports_device*, %struct.ports_device** %2, align 8
  %6 = call i32 @use_multiport(%struct.ports_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %16, %9
  %11 = load %struct.ports_device*, %struct.ports_device** %2, align 8
  %12 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.port_buffer* @virtqueue_get_buf(i32 %13, i32* %4)
  store %struct.port_buffer* %14, %struct.port_buffer** %3, align 8
  %15 = icmp ne %struct.port_buffer* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %18 = call i32 @free_buf(%struct.port_buffer* %17)
  br label %10

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.ports_device*, %struct.ports_device** %2, align 8
  %22 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.port_buffer* @virtqueue_detach_unused_buf(i32 %23)
  store %struct.port_buffer* %24, %struct.port_buffer** %3, align 8
  %25 = icmp ne %struct.port_buffer* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %28 = call i32 @free_buf(%struct.port_buffer* %27)
  br label %20

29:                                               ; preds = %8, %20
  ret void
}

declare dso_local i32 @use_multiport(%struct.ports_device*) #1

declare dso_local %struct.port_buffer* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @free_buf(%struct.port_buffer*) #1

declare dso_local %struct.port_buffer* @virtqueue_detach_unused_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
