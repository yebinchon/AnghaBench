; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c___send_control_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c___send_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }
%struct.virtio_console_control = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ports_device*, i32, i32, i32)* @__send_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_control_msg(%struct.ports_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ports_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.scatterlist], align 4
  %11 = alloca %struct.virtio_console_control, align 4
  %12 = alloca %struct.virtqueue*, align 8
  %13 = alloca i32, align 4
  store %struct.ports_device* %0, %struct.ports_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %15 = call i32 @use_multiport(%struct.ports_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %11, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %26 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %25, i32 0, i32 1
  %27 = load %struct.virtqueue*, %struct.virtqueue** %26, align 8
  store %struct.virtqueue* %27, %struct.virtqueue** %12, align 8
  %28 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %29 = call i32 @sg_init_one(%struct.scatterlist* %28, %struct.virtio_console_control* %11, i32 12)
  %30 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %31 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %34 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %35 = call i64 @virtqueue_add_buf(%struct.virtqueue* %33, %struct.scatterlist* %34, i32 1, i32 0, %struct.virtio_console_control* %11)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %18
  %38 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %39 = call i32 @virtqueue_kick(%struct.virtqueue* %38)
  br label %40

40:                                               ; preds = %45, %37
  %41 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %42 = call i32 @virtqueue_get_buf(%struct.virtqueue* %41, i32* %13)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @cpu_relax()
  br label %40

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %50 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @use_multiport(%struct.ports_device*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.virtio_console_control*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @virtqueue_add_buf(%struct.virtqueue*, %struct.scatterlist*, i32, i32, %struct.virtio_console_control*) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
