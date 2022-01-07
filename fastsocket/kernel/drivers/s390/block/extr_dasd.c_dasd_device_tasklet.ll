; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_device_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_device_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32 }
%struct.list_head = type { i32 }

@shutdown_waitq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @dasd_device_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_device_tasklet(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.list_head, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 1
  %6 = call i32 @atomic_set(i32* %5, i32 0)
  %7 = call i32 @INIT_LIST_HEAD(%struct.list_head* %3)
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_ccwdev_lock(i32 %10)
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %14 = call i32 @__dasd_device_check_expire(%struct.dasd_device* %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %16 = call i32 @__dasd_device_process_ccw_queue(%struct.dasd_device* %15, %struct.list_head* %3)
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = call i32 @__dasd_device_check_path_events(%struct.dasd_device* %17)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_ccwdev_lock(i32 %21)
  %23 = call i32 @spin_unlock_irq(i32 %22)
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = call i32 @__dasd_device_process_final_queue(%struct.dasd_device* %24, %struct.list_head* %3)
  %26 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_ccwdev_lock(i32 %28)
  %30 = call i32 @spin_lock_irq(i32 %29)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %32 = call i32 @__dasd_device_start_head(%struct.dasd_device* %31)
  %33 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_ccwdev_lock(i32 %35)
  %37 = call i32 @spin_unlock_irq(i32 %36)
  %38 = call i64 @waitqueue_active(i32* @shutdown_waitq)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = call i32 @wake_up(i32* @shutdown_waitq)
  br label %42

42:                                               ; preds = %40, %1
  %43 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %44 = call i32 @dasd_put_device(%struct.dasd_device* %43)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__dasd_device_check_expire(%struct.dasd_device*) #1

declare dso_local i32 @__dasd_device_process_ccw_queue(%struct.dasd_device*, %struct.list_head*) #1

declare dso_local i32 @__dasd_device_check_path_events(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @__dasd_device_process_final_queue(%struct.dasd_device*, %struct.list_head*) #1

declare dso_local i32 @__dasd_device_start_head(%struct.dasd_device*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
