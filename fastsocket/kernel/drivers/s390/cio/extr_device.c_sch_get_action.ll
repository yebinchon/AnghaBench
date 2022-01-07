; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_sch_get_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_sch_get_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ccw_device = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@IO_SCH_UNREG = common dso_local global i32 0, align 4
@CIO_GONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i64 0, align 8
@IO_SCH_ORPH_UNREG = common dso_local global i32 0, align 4
@IO_SCH_ATTACH = common dso_local global i32 0, align 4
@IO_SCH_UNREG_ATTACH = common dso_local global i32 0, align 4
@IO_SCH_ORPH_ATTACH = common dso_local global i32 0, align 4
@CIO_NO_PATH = common dso_local global i32 0, align 4
@IO_SCH_DISC = common dso_local global i32 0, align 4
@IO_SCH_REPROBE = common dso_local global i32 0, align 4
@IO_SCH_VERIFY = common dso_local global i32 0, align 4
@IO_SCH_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @sch_get_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_get_action(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %6 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %5)
  store %struct.ccw_device* %6, %struct.ccw_device** %4, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %8 = call i64 @cio_update_schib(%struct.subchannel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = icmp ne %struct.ccw_device* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @IO_SCH_UNREG, align 4
  store i32 %14, i32* %2, align 4
  br label %97

15:                                               ; preds = %10
  %16 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %17 = load i32, i32* @CIO_GONE, align 4
  %18 = call i64 @ccw_device_notify(%struct.ccw_device* %16, i32 %17)
  %19 = load i64, i64* @NOTIFY_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @IO_SCH_UNREG, align 4
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %15
  %24 = load i32, i32* @IO_SCH_ORPH_UNREG, align 4
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %1
  %26 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %27 = icmp ne %struct.ccw_device* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @IO_SCH_ATTACH, align 4
  store i32 %29, i32* %2, align 4
  br label %97

30:                                               ; preds = %25
  %31 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %45 = load i32, i32* @CIO_GONE, align 4
  %46 = call i64 @ccw_device_notify(%struct.ccw_device* %44, i32 %45)
  %47 = load i64, i64* @NOTIFY_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @IO_SCH_UNREG_ATTACH, align 4
  store i32 %50, i32* %2, align 4
  br label %97

51:                                               ; preds = %43
  %52 = load i32, i32* @IO_SCH_ORPH_ATTACH, align 4
  store i32 %52, i32* %2, align 4
  br label %97

53:                                               ; preds = %30
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %66 = load i32, i32* @CIO_NO_PATH, align 4
  %67 = call i64 @ccw_device_notify(%struct.ccw_device* %65, i32 %66)
  %68 = load i64, i64* @NOTIFY_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @IO_SCH_UNREG, align 4
  store i32 %71, i32* %2, align 4
  br label %97

72:                                               ; preds = %64
  %73 = load i32, i32* @IO_SCH_DISC, align 4
  store i32 %73, i32* %2, align 4
  br label %97

74:                                               ; preds = %53
  %75 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %76 = call i64 @device_is_disconnected(%struct.ccw_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @IO_SCH_REPROBE, align 4
  store i32 %79, i32* %2, align 4
  br label %97

80:                                               ; preds = %74
  %81 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %82 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %87 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @IO_SCH_VERIFY, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %85, %80
  %96 = load i32, i32* @IO_SCH_NOP, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %93, %78, %72, %70, %51, %49, %28, %23, %21, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i64 @ccw_device_notify(%struct.ccw_device*, i32) #1

declare dso_local i64 @device_is_disconnected(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
