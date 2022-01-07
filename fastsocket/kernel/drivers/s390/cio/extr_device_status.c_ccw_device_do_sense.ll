; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_do_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_do_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.irb = type { i32 }
%struct.subchannel = type { i32 }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.ccw1 }

@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CCW_CMD_BASIC_SENSE = common dso_local global i32 0, align 4
@SENSE_MAX_COUNT = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DEV_EVENT_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_do_sense(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.subchannel* @to_subchannel(i32 %12)
  store %struct.subchannel* %13, %struct.subchannel** %6, align 8
  %14 = load %struct.irb*, %struct.irb** %5, align 8
  %15 = getelementptr inbounds %struct.irb, %struct.irb* %14, i32 0, i32 0
  %16 = call i32 @scsw_actl(i32* %15)
  %17 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %18 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %27 = call %struct.TYPE_8__* @to_io_private(%struct.subchannel* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.ccw1* %28, %struct.ccw1** %7, align 8
  %29 = load i32, i32* @CCW_CMD_BASIC_SENSE, align 4
  %30 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @__pa(i32 %37)
  %39 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @SENSE_MAX_COUNT, align 4
  %42 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CCW_FLAG_SLI, align 4
  %45 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %48 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %49 = call i32 @cio_start(%struct.subchannel* %47, %struct.ccw1* %48, i32 255)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %25
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %25
  %60 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %61 = load i32, i32* @DEV_EVENT_VERIFY, align 4
  %62 = call i32 @dev_fsm_event(%struct.ccw_device* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local %struct.TYPE_8__* @to_io_private(%struct.subchannel*) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @cio_start(%struct.subchannel*, %struct.ccw1*, i32) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
