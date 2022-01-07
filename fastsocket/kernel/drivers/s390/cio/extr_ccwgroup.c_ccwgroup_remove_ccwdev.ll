; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_remove_ccwdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_remove_ccwdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, i32 }
%struct.ccwgroup_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccwgroup_remove_ccwdev(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccwgroup_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = call i32 @ccw_device_set_offline(%struct.ccw_device* %4)
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @spin_lock_irq(i32 %8)
  %10 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 1
  %12 = call %struct.ccwgroup_device* @dev_get_drvdata(i32* %11)
  store %struct.ccwgroup_device* %12, %struct.ccwgroup_device** %3, align 8
  %13 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %14 = icmp ne %struct.ccwgroup_device* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_unlock_irq(i32 %18)
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 0
  %23 = call i32 @get_device(i32* %22)
  %24 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spin_unlock_irq(i32 %26)
  %28 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %32 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %31, i32 0, i32 0
  %33 = call i64 @device_is_registered(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %37 = call i32 @__ccwgroup_remove_symlinks(%struct.ccwgroup_device* %36)
  %38 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %38, i32 0, i32 0
  %40 = call i32 @device_unregister(i32* %39)
  %41 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %42 = call i32 @__ccwgroup_remove_cdev_refs(%struct.ccwgroup_device* %41)
  br label %43

43:                                               ; preds = %35, %20
  %44 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %45 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %48 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %47, i32 0, i32 0
  %49 = call i32 @put_device(i32* %48)
  br label %50

50:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.ccwgroup_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @__ccwgroup_remove_symlinks(%struct.ccwgroup_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @__ccwgroup_remove_cdev_refs(%struct.ccwgroup_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
