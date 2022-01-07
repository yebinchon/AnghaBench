; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_w4sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_w4sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, i32 (%struct.ccw_device*, i32, %struct.irb*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.irb = type { i32 }

@__LC_IRB = common dso_local global i64 0, align 8
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"0.%x.%04x: unsolicited interrupt during w4sense...\0A\00", align 1
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@SCSW_FCTL_HALT_FUNC = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_w4sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_w4sense(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @__LC_IRB, align 8
  %7 = inttoptr i64 %6 to %struct.irb*
  store %struct.irb* %7, %struct.irb** %5, align 8
  %8 = load %struct.irb*, %struct.irb** %5, align 8
  %9 = getelementptr inbounds %struct.irb, %struct.irb* %8, i32 0, i32 0
  %10 = call i32 @scsw_stctl(i32* %9)
  %11 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %12 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.irb*, %struct.irb** %5, align 8
  %17 = getelementptr inbounds %struct.irb, %struct.irb* %16, i32 0, i32 0
  %18 = call i32 @scsw_cc(i32* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = load %struct.irb*, %struct.irb** %5, align 8
  %23 = call i32 @ccw_device_do_sense(%struct.ccw_device* %21, %struct.irb* %22)
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %36)
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 1
  %40 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %39, align 8
  %41 = icmp ne i32 (%struct.ccw_device*, i32, %struct.irb*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 1
  %45 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %44, align 8
  %46 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %47 = load %struct.irb*, %struct.irb** %5, align 8
  %48 = call i32 %45(%struct.ccw_device* %46, i32 0, %struct.irb* %47)
  br label %49

49:                                               ; preds = %42, %24
  br label %50

50:                                               ; preds = %49, %20
  br label %115

51:                                               ; preds = %2
  %52 = load %struct.irb*, %struct.irb** %5, align 8
  %53 = getelementptr inbounds %struct.irb, %struct.irb* %52, i32 0, i32 0
  %54 = call i32 @scsw_fctl(i32* %53)
  %55 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %56 = load i32, i32* @SCSW_FCTL_HALT_FUNC, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %62 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %67 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = load %struct.irb*, %struct.irb** %5, align 8
  %73 = call i32 @ccw_device_accumulate_irb(%struct.ccw_device* %71, %struct.irb* %72)
  br label %90

74:                                               ; preds = %51
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = load %struct.irb*, %struct.irb** %5, align 8
  %77 = call i32 @ccw_device_accumulate_basic_sense(%struct.ccw_device* %75, %struct.irb* %76)
  %78 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %79 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %87 = load %struct.irb*, %struct.irb** %5, align 8
  %88 = call i32 @ccw_device_do_sense(%struct.ccw_device* %86, %struct.irb* %87)
  br label %115

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* @DEV_STATE_ONLINE, align 4
  %92 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %93 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 4
  %96 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %97 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i32 @wake_up(i32* %99)
  %101 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %102 = call i64 @ccw_device_call_handler(%struct.ccw_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %90
  %105 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %106 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %114 = call i32 @ccw_device_online_verify(%struct.ccw_device* %113, i32 0)
  br label %115

115:                                              ; preds = %50, %85, %112, %104, %90
  ret void
}

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @scsw_cc(i32*) #1

declare dso_local i32 @ccw_device_do_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @scsw_fctl(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ccw_device_accumulate_irb(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @ccw_device_accumulate_basic_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @ccw_device_call_handler(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
