; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_terminate_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_terminate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ccw_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@DEV_EVENT_VERIFY = common dso_local global i32 0, align 4
@DEV_EVENT_NOTOPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*, i64)* @io_subchannel_terminate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_terminate_path(%struct.subchannel* %0, i64 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %6)
  store %struct.ccw_device* %7, %struct.ccw_device** %5, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %9 = icmp ne %struct.ccw_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = call i64 @cio_update_schib(%struct.subchannel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %52

16:                                               ; preds = %11
  %17 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i64 @scsw_actl(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %16
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %41 = call i32 @ccw_device_kill_io(%struct.ccw_device* %40)
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %44 = call i64 @cio_clear(%struct.subchannel* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %39, %30
  %49 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %50 = load i32, i32* @DEV_EVENT_VERIFY, align 4
  %51 = call i32 @dev_fsm_event(%struct.ccw_device* %49, i32 %50)
  br label %56

52:                                               ; preds = %46, %15
  %53 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %54 = load i32, i32* @DEV_EVENT_NOTOPER, align 4
  %55 = call i32 @dev_fsm_event(%struct.ccw_device* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48, %10
  ret void
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i64 @scsw_actl(i32*) #1

declare dso_local i32 @ccw_device_kill_io(%struct.ccw_device*) #1

declare dso_local i64 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
