; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t59_plat_data* }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i64, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@M48T59_CNTL_READ = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_YEAR = common dso_local global i32 0, align 4
@M48T59_MONTH = common dso_local global i32 0, align 4
@M48T59_WDAY = common dso_local global i32 0, align 4
@M48T59_WDAY_CEB = common dso_local global i32 0, align 4
@M48T59_WDAY_CB = common dso_local global i32 0, align 4
@M48T59_ALARM_DATE = common dso_local global i32 0, align 4
@M48T59_ALARM_HOUR = common dso_local global i32 0, align 4
@M48T59_ALARM_MIN = common dso_local global i32 0, align 4
@M48T59_ALARM_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RTC read alarm time %04d-%02d-%02d %02d/%02d/%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m48t59_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.m48t59_plat_data*, align 8
  %8 = alloca %struct.m48t59_private*, align 8
  %9 = alloca %struct.rtc_time*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %16, align 8
  store %struct.m48t59_plat_data* %17, %struct.m48t59_plat_data** %7, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %19 = call %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.m48t59_private* %19, %struct.m48t59_private** %8, align 8
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 0
  store %struct.rtc_time* %21, %struct.rtc_time** %9, align 8
  %22 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %23 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NO_IRQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %114

30:                                               ; preds = %2
  %31 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %32 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %31, i32 0, i32 1
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load i32, i32* @M48T59_CNTL_READ, align 4
  %36 = load i32, i32* @M48T59_CNTL, align 4
  %37 = call i32 @M48T59_SET_BITS(i32 %35, i32 %36)
  %38 = load i32, i32* @M48T59_YEAR, align 4
  %39 = call i32 @M48T59_READ(i32 %38)
  %40 = call i8* @bcd2bin(i32 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @M48T59_MONTH, align 4
  %44 = call i32 @M48T59_READ(i32 %43)
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = getelementptr i8, i8* %45, i64 -1
  %47 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @M48T59_WDAY, align 4
  %50 = call i32 @M48T59_READ(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @M48T59_WDAY_CEB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %30
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @M48T59_WDAY_CB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr i8, i8* %63, i64 100
  store i8* %64, i8** %62, align 8
  br label %65

65:                                               ; preds = %60, %55, %30
  %66 = load i32, i32* @M48T59_ALARM_DATE, align 4
  %67 = call i32 @M48T59_READ(i32 %66)
  %68 = call i8* @bcd2bin(i32 %67)
  %69 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @M48T59_ALARM_HOUR, align 4
  %72 = call i32 @M48T59_READ(i32 %71)
  %73 = call i8* @bcd2bin(i32 %72)
  %74 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @M48T59_ALARM_MIN, align 4
  %77 = call i32 @M48T59_READ(i32 %76)
  %78 = call i8* @bcd2bin(i32 %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @M48T59_ALARM_SEC, align 4
  %82 = call i32 @M48T59_READ(i32 %81)
  %83 = call i8* @bcd2bin(i32 %82)
  %84 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @M48T59_CNTL_READ, align 4
  %87 = load i32, i32* @M48T59_CNTL, align 4
  %88 = call i32 @M48T59_CLEAR_BITS(i32 %86, i32 %87)
  %89 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %90 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %89, i32 0, i32 1
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr i8, i8* %96, i64 1900
  %98 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %100, i8* %103, i8* %106, i8* %109, i8* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %65, %27
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
