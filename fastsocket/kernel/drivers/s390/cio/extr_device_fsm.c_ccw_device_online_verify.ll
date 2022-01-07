; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_online_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DEV_STATE_W4SENSE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@DEV_STATE_VERIFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_online_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_online_verify(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DEV_STATE_W4SENSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.subchannel* @to_subchannel(i32 %23)
  store %struct.subchannel* %24, %struct.subchannel** %5, align 8
  %25 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %26 = call i64 @cio_update_schib(%struct.subchannel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @ccw_device_verify_done(%struct.ccw_device* %29, i32 %31)
  br label %71

33:                                               ; preds = %19
  %34 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i64 @scsw_actl(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %41 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @scsw_stctl(i32* %42)
  %44 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %49 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @scsw_stctl(i32* %52)
  %54 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47, %39, %33
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %71

63:                                               ; preds = %47
  %64 = load i64, i64* @DEV_STATE_VERIFY, align 8
  %65 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %66 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %70 = call i32 @ccw_device_verify_start(%struct.ccw_device* %69)
  br label %71

71:                                               ; preds = %63, %57, %28, %13
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @ccw_device_verify_done(%struct.ccw_device*, i32) #1

declare dso_local i64 @scsw_actl(i32*) #1

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @ccw_device_verify_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
