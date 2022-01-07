; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store_handle_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store_handle_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@CDEV_TODO_UNREG_EVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @online_store_handle_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @online_store_handle_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %17 = load i32, i32* @CDEV_TODO_UNREG_EVAL, align 4
  %18 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %16, i32 %17)
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @spin_unlock_irq(i32 %21)
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %42 = call i32 @ccw_device_set_offline(%struct.ccw_device* %41)
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %33, %28, %23
  br label %44

44:                                               ; preds = %43, %11
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
