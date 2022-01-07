; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_call_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i32 }

@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_INTER_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_PRIM_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_call_handler(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %4, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = call i32 @scsw_stctl(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %25 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %22, %1
  %33 = phi i1 [ true, %22 ], [ true, %1 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %50
  store i32 0, i32* %2, align 4
  br label %96

64:                                               ; preds = %58, %45, %37, %32
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 1
  %73 = load i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)** %72, align 8
  %74 = icmp ne i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 1
  %78 = load i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)** %77, align 8
  %79 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %80 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %81 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %86 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 %78(%struct.ccw_device* %79, i32 %84, %struct.TYPE_9__* %88)
  br label %90

90:                                               ; preds = %75, %70
  %91 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %92 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @memset(%struct.TYPE_9__* %94, i32 0, i32 4)
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %63
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
