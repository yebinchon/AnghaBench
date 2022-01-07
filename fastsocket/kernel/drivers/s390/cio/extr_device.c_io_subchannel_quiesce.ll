; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ccw_device = type { %struct.TYPE_6__*, i32 (%struct.ccw_device*, i32, i32)* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STATE_QUIESCE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @io_subchannel_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_quiesce(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %6 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @spin_lock_irq(i32 %7)
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %9)
  store %struct.ccw_device* %10, %struct.ccw_device** %3, align 8
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @cio_is_console(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %105

25:                                               ; preds = %17
  %26 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %27 = call i32 @cio_disable_subchannel(%struct.subchannel* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %105

33:                                               ; preds = %25
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 1
  %36 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.ccw_device*, i32, i32)* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %40 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %39, i32 0, i32 1
  %41 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %40, align 8
  %42 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %43 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @ERR_PTR(i32 %49)
  %51 = call i32 %41(%struct.ccw_device* %42, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %38, %33
  br label %53

53:                                               ; preds = %101, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load i64, i64* @DEV_STATE_QUIESCE, align 8
  %60 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 255, i32* %67, align 8
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = call i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %58
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 %76, 10
  %78 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %75, i32 %77)
  %79 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %80 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_unlock_irq(i32 %81)
  %83 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %84 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %89 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DEV_STATE_QUIESCE, align 8
  %94 = icmp ne i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @wait_event(i32 %87, i32 %95)
  %97 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %98 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spin_lock_irq(i32 %99)
  br label %101

101:                                              ; preds = %74, %58
  %102 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %103 = call i32 @cio_disable_subchannel(%struct.subchannel* %102)
  store i32 %103, i32* %4, align 4
  br label %53

104:                                              ; preds = %53
  br label %105

105:                                              ; preds = %104, %32, %24, %16
  %106 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %107 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spin_unlock_irq(i32 %108)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i64 @cio_is_console(i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
