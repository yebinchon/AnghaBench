; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__*, i32 (%struct.ccw_device*, i32, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DEV_STATE_TIMEOUT_KILL = common dso_local global i32 0, align 4
@DEV_EVENT_NOTOPER = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_online_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_online_timeout(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %6, i32 0)
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 255, i32* %11, align 4
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = call i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 3, %20
  %22 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %19, i32 %21)
  %23 = load i32, i32* @DEV_STATE_TIMEOUT_KILL, align 4
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %33 = load i32, i32* @DEV_EVENT_NOTOPER, align 4
  %34 = call i32 @dev_fsm_event(%struct.ccw_device* %32, i32 %33)
  br label %55

35:                                               ; preds = %28
  %36 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 1
  %38 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.ccw_device*, i32, i32)* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 1
  %43 = load i32 (%struct.ccw_device*, i32, i32)*, i32 (%struct.ccw_device*, i32, i32)** %42, align 8
  %44 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @ERR_PTR(i32 %51)
  %53 = call i32 %43(%struct.ccw_device* %44, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %35
  br label %55

55:                                               ; preds = %18, %54, %31
  ret void
}

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
