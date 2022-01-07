; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@DEV_STATE_NOT_OPER = common dso_local global i64 0, align 8
@DEV_STATE_BOXED = common dso_local global i64 0, align 8
@DEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEV_STATE_DISBAND_PGID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEV_STATE_NOT_OPER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12, %1
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %27 = load i64, i64* @DEV_STATE_NOT_OPER, align 8
  %28 = call i32 @ccw_device_done(%struct.ccw_device* %26, i64 %27)
  store i32 0, i32* %2, align 4
  br label %101

29:                                               ; preds = %12
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DEV_STATE_BOXED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = load i64, i64* @DEV_STATE_BOXED, align 8
  %40 = call i32 @ccw_device_done(%struct.ccw_device* %38, i64 %39)
  store i32 0, i32* %2, align 4
  br label %101

41:                                               ; preds = %29
  %42 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %43 = call i64 @ccw_device_is_orphan(%struct.ccw_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %47 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %48 = call i32 @ccw_device_done(%struct.ccw_device* %46, i64 %47)
  store i32 0, i32* %2, align 4
  br label %101

49:                                               ; preds = %41
  %50 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %51 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.subchannel* @to_subchannel(i32 %53)
  store %struct.subchannel* %54, %struct.subchannel** %4, align 8
  %55 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %56 = call i64 @cio_update_schib(%struct.subchannel* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %49
  %62 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %63 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i64 @scsw_actl(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %101

70:                                               ; preds = %61
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %101

81:                                               ; preds = %70
  %82 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %83 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %91 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %92 = call i32 @ccw_device_done(%struct.ccw_device* %90, i64 %91)
  store i32 0, i32* %2, align 4
  br label %101

93:                                               ; preds = %81
  %94 = load i64, i64* @DEV_STATE_DISBAND_PGID, align 8
  %95 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %96 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  %99 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %100 = call i32 @ccw_device_disband_start(%struct.ccw_device* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %89, %78, %67, %58, %45, %37, %20
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @ccw_device_done(%struct.ccw_device*, i64) #1

declare dso_local i64 @ccw_device_is_orphan(%struct.ccw_device*) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i64 @scsw_actl(i32*) #1

declare dso_local i32 @ccw_device_disband_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
