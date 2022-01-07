; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c___ccw_device_pm_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c___ccw_device_pm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32, i32 }

@LPM_ANYPATH = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@DEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @__ccw_device_pm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ccw_device_pm_restore(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.subchannel* @to_subchannel(i32 %7)
  store %struct.subchannel* %8, %struct.subchannel** %3, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @cio_is_console(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = ptrtoint %struct.subchannel* %20 to i64
  %22 = trunc i64 %21 to i32
  %23 = call i32 @cio_enable_subchannel(%struct.subchannel* %19, i32 %22)
  br label %100

24:                                               ; preds = %1
  %25 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @LPM_ANYPATH, align 4
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 8
  %35 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @css_schedule_eval(i32 %37)
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spin_unlock_irq(i32 %41)
  %43 = call i32 (...) @css_complete_work()
  %44 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.subchannel* @to_subchannel(i32 %47)
  store %struct.subchannel* %48, %struct.subchannel** %3, align 8
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spin_lock_irq(i32 %51)
  %53 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %54 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %24
  %61 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %62 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %100

69:                                               ; preds = %60, %24
  %70 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %71 = call i32 @ccw_device_recognition(%struct.ccw_device* %70)
  %72 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %73 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @spin_unlock_irq(i32 %74)
  %76 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %82 = call i64 @dev_fsm_final_state(%struct.ccw_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %69
  %85 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %86 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %84, %69
  %93 = phi i1 [ true, %69 ], [ %91, %84 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @wait_event(i32 %80, i32 %94)
  %96 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %97 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @spin_lock_irq(i32 %98)
  br label %100

100:                                              ; preds = %92, %68, %18
  %101 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %102 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %107 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spin_unlock_irq(i32 %108)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @cio_is_console(i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @css_schedule_eval(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @css_complete_work(...) #1

declare dso_local i32 @ccw_device_recognition(%struct.ccw_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @dev_fsm_final_state(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
