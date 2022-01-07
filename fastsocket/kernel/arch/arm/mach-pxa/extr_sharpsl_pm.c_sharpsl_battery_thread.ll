; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_battery_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_battery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32)*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.work_struct = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@APM_AC_ONLINE = common dso_local global i64 0, align 8
@APM_AC_OFFLINE = common dso_local global i64 0, align 8
@CHRG_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@SHARPSL_CHARGE_ON_TIME_INTERVAL = common dso_local global i64 0, align 8
@toggle_charger = common dso_local global i32 0, align 4
@SHARPSL_BATT_VOLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Warning: Cannot read main battery!\0A\00", align 1
@APM_BATTERY_STATUS_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Battery: voltage: %d, status: %d, percentage: %d, time: %ld\0A\00", align 1
@APM_BATTERY_STATUS_CRITICAL = common dso_local global i32 0, align 4
@SHARPSL_APM_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Fatal Off\0A\00", align 1
@APM_CRITICAL_SUSPEND = common dso_local global i32 0, align 4
@sharpsl_bat = common dso_local global i32 0, align 4
@SHARPSL_BATCHK_TIME = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_LOW = common dso_local global i32 0, align 4
@SHARPSL_BL_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sharpsl_battery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_battery_thread(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %116

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %15 = call i32 %13(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @APM_AC_ONLINE, align 8
  br label %21

19:                                               ; preds = %10
  %20 = load i64, i64* @APM_AC_OFFLINE, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 0), align 8
  %29 = load i64, i64* @CHRG_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 5), align 8
  %34 = load i64, i64* @SHARPSL_CHARGE_ON_TIME_INTERVAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @time_after(i32 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @schedule_delayed_work(i32* @toggle_charger, i32 0)
  br label %40

40:                                               ; preds = %38, %31, %27, %21
  br label %41

41:                                               ; preds = %40, %63
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load i32, i32* @SHARPSL_BATT_VOLT, align 4
  %46 = call i32 %44(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %64

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = icmp sgt i32 %51, 5
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %62 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %64

63:                                               ; preds = %50
  br label %41

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @sharpsl_average_value(i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @get_apm_status(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @get_percentage(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %72 = load i64, i64* @APM_AC_ONLINE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @APM_BATTERY_STATUS_HIGH, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %74, %64
  %83 = load i32, i32* %3, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 2), align 4
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  %91 = load i32, i32* @jiffies, align 4
  %92 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %94 = load i64, i64* @APM_AC_ONLINE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %86
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %98 = load i32, i32* @APM_BATTERY_STATUS_CRITICAL, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %102 = load i32, i32* @SHARPSL_APM_QUEUED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @SHARPSL_APM_QUEUED, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %108 = or i32 %107, %106
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @APM_CRITICAL_SUSPEND, align 4
  %112 = call i32 @apm_queue_event(i32 %111)
  br label %113

113:                                              ; preds = %105, %100, %96, %86
  %114 = load i32, i32* @SHARPSL_BATCHK_TIME, align 4
  %115 = call i32 @schedule_delayed_work(i32* @sharpsl_bat, i32 %114)
  br label %116

116:                                              ; preds = %113, %9
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sharpsl_average_value(i32) #1

declare dso_local i32 @get_apm_status(i32) #1

declare dso_local i32 @get_percentage(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @apm_queue_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
