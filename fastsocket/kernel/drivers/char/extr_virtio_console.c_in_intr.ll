; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_in_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_in_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.port = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @in_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_intr(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %11 = call %struct.port* @find_port_by_vq(i32 %9, %struct.virtqueue* %10)
  store %struct.port* %11, %struct.port** %3, align 8
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = icmp ne %struct.port* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.port*, %struct.port** %3, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.port*, %struct.port** %3, align 8
  %21 = call i32 @get_inbuf(%struct.port* %20)
  %22 = load %struct.port*, %struct.port** %3, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.port*, %struct.port** %3, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load %struct.port*, %struct.port** %3, align 8
  %30 = call i32 @discard_port_data(%struct.port* %29)
  br label %31

31:                                               ; preds = %28, %15
  %32 = load %struct.port*, %struct.port** %3, align 8
  %33 = call i32 @send_sigio_to_port(%struct.port* %32)
  %34 = load %struct.port*, %struct.port** %3, align 8
  %35 = getelementptr inbounds %struct.port, %struct.port* %34, i32 0, i32 2
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.port*, %struct.port** %3, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 1
  %40 = call i32 @wake_up_interruptible(i32* %39)
  %41 = load %struct.port*, %struct.port** %3, align 8
  %42 = call i64 @is_console_port(%struct.port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.port*, %struct.port** %3, align 8
  %46 = getelementptr inbounds %struct.port, %struct.port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @hvc_poll(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 (...) @hvc_kick()
  br label %53

53:                                               ; preds = %14, %51, %44, %31
  ret void
}

declare dso_local %struct.port* @find_port_by_vq(i32, %struct.virtqueue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_inbuf(%struct.port*) #1

declare dso_local i32 @discard_port_data(%struct.port*) #1

declare dso_local i32 @send_sigio_to_port(%struct.port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @is_console_port(%struct.port*) #1

declare dso_local i64 @hvc_poll(i32) #1

declare dso_local i32 @hvc_kick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
