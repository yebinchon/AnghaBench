; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t59_plat_data* }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i64, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M48T59_MDAY = common dso_local global i32 0, align 4
@M48T59_CNTL_WRITE = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_ALARM_DATE = common dso_local global i32 0, align 4
@M48T59_ALARM_HOUR = common dso_local global i32 0, align 4
@M48T59_ALARM_MIN = common dso_local global i32 0, align 4
@M48T59_ALARM_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RTC set alarm time %04d-%02d-%02d %02d/%02d/%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m48t59_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.m48t59_plat_data*, align 8
  %8 = alloca %struct.m48t59_private*, align 8
  %9 = alloca %struct.rtc_time*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %20, align 8
  store %struct.m48t59_plat_data* %21, %struct.m48t59_plat_data** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = call %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device* %22)
  store %struct.m48t59_private* %23, %struct.m48t59_private** %8, align 8
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 0
  store %struct.rtc_time* %25, %struct.rtc_time** %9, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %30 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NO_IRQ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %142

37:                                               ; preds = %2
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %142

43:                                               ; preds = %37
  %44 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 31
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @bin2bcd(i32 %53)
  br label %56

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 255, %55 ]
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @M48T59_MDAY, align 4
  %62 = call i32 @M48T59_READ(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 24
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @bin2bcd(i32 %70)
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  store i32 %74, i32* %11, align 4
  %75 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 60
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @bin2bcd(i32 %81)
  br label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %82, %80 ], [ 0, %83 ]
  store i32 %85, i32* %12, align 4
  %86 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 60
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @bin2bcd(i32 %92)
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  store i32 %96, i32* %13, align 4
  %97 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %98 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %97, i32 0, i32 1
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %102 = load i32, i32* @M48T59_CNTL, align 4
  %103 = call i32 @M48T59_SET_BITS(i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @M48T59_ALARM_DATE, align 4
  %106 = call i32 @M48T59_WRITE(i32 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @M48T59_ALARM_HOUR, align 4
  %109 = call i32 @M48T59_WRITE(i32 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @M48T59_ALARM_MIN, align 4
  %112 = call i32 @M48T59_WRITE(i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @M48T59_ALARM_SEC, align 4
  %115 = call i32 @M48T59_WRITE(i32 %113, i32 %114)
  %116 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %117 = load i32, i32* @M48T59_CNTL, align 4
  %118 = call i32 @M48T59_CLEAR_BITS(i32 %116, i32 %117)
  %119 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %120 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %119, i32 0, i32 1
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1900
  %126 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %136 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %95, %40, %34
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i32 @M48T59_WRITE(i32, i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
