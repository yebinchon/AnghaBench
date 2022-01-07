; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ccw_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DEV_STATE_NOT_OPER = common dso_local global i32 0, align 4
@io_subchannel_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @io_subchannel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_remove(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i64, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %6 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %5)
  store %struct.ccw_device* %6, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = icmp ne %struct.ccw_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = call i32 @io_subchannel_quiesce(%struct.subchannel* %11)
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %19 = call i32 @sch_set_cdev(%struct.subchannel* %18, i32* null)
  %20 = load i32, i32* @DEV_STATE_NOT_OPER, align 4
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = call i32 @ccw_device_unregister(%struct.ccw_device* %30)
  br label %32

32:                                               ; preds = %10, %9
  %33 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @sysfs_remove_group(i32* %39, i32* @io_subchannel_attr_group)
  ret i32 0
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @io_subchannel_quiesce(%struct.subchannel*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @sch_set_cdev(%struct.subchannel*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ccw_device_unregister(%struct.ccw_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
