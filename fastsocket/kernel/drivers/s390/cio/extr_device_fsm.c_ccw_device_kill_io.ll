; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_kill_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_kill_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__*, i32 (%struct.ccw_device*, i32, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DEV_STATE_TIMEOUT_KILL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_kill_io(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 255, i32* %7, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %9 = call i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 3, %16
  %18 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %15, i32 %17)
  %19 = load i32, i32* @DEV_STATE_TIMEOUT_KILL, align 4
  %20 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %26 = call i32 @ccw_device_online_verify(%struct.ccw_device* %25, i32 0)
  %27 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.ccw_device*, i32, i32)* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 1
  %34 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %33, align 8
  %35 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %36 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @ERR_PTR(i32 %42)
  %44 = call i32 %34(%struct.ccw_device* %35, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %14, %31, %24
  ret void
}

declare dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
