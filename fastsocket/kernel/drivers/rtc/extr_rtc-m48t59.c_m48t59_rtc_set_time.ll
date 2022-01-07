; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t59_plat_data* }
%struct.m48t59_plat_data = type { i64 }
%struct.m48t59_private = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"RTC set time %04d-%02d-%02d %02d/%02d/%02d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M48T59_CNTL_WRITE = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_SEC = common dso_local global i32 0, align 4
@M48T59_MIN = common dso_local global i32 0, align 4
@M48T59_HOUR = common dso_local global i32 0, align 4
@M48T59_MDAY = common dso_local global i32 0, align 4
@M48T59_MONTH = common dso_local global i32 0, align 4
@M48T59_YEAR = common dso_local global i32 0, align 4
@M48T59RTC_TYPE_M48T59 = common dso_local global i64 0, align 8
@M48T59_WDAY_CEB = common dso_local global i32 0, align 4
@M48T59_WDAY_CB = common dso_local global i32 0, align 4
@M48T59_WDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t59_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.m48t59_plat_data*, align 8
  %8 = alloca %struct.m48t59_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
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
  store i32 0, i32* %10, align 4
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1900
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %127

47:                                               ; preds = %2
  %48 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %49 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %53 = load i32, i32* @M48T59_CNTL, align 4
  %54 = call i32 @M48T59_SET_BITS(i32 %52, i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bin2bcd(i32 %57)
  %59 = and i32 %58, 127
  %60 = load i32, i32* @M48T59_SEC, align 4
  %61 = call i32 @M48T59_WRITE(i32 %59, i32 %60)
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bin2bcd(i32 %64)
  %66 = and i32 %65, 127
  %67 = load i32, i32* @M48T59_MIN, align 4
  %68 = call i32 @M48T59_WRITE(i32 %66, i32 %67)
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bin2bcd(i32 %71)
  %73 = and i32 %72, 63
  %74 = load i32, i32* @M48T59_HOUR, align 4
  %75 = call i32 @M48T59_WRITE(i32 %73, i32 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bin2bcd(i32 %78)
  %80 = and i32 %79, 63
  %81 = load i32, i32* @M48T59_MDAY, align 4
  %82 = call i32 @M48T59_WRITE(i32 %80, i32 %81)
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @bin2bcd(i32 %86)
  %88 = and i32 %87, 31
  %89 = load i32, i32* @M48T59_MONTH, align 4
  %90 = call i32 @M48T59_WRITE(i32 %88, i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = srem i32 %91, 100
  %93 = call i32 @bin2bcd(i32 %92)
  %94 = load i32, i32* @M48T59_YEAR, align 4
  %95 = call i32 @M48T59_WRITE(i32 %93, i32 %94)
  %96 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %7, align 8
  %97 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @M48T59RTC_TYPE_M48T59, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %47
  %102 = load i32, i32* %11, align 4
  %103 = sdiv i32 %102, 100
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @M48T59_WDAY_CEB, align 4
  %107 = load i32, i32* @M48T59_WDAY_CB, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %101, %47
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bin2bcd(i32 %112)
  %114 = and i32 %113, 7
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @M48T59_WDAY, align 4
  %119 = call i32 @M48T59_WRITE(i32 %117, i32 %118)
  %120 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %121 = load i32, i32* @M48T59_CNTL, align 4
  %122 = call i32 @M48T59_CLEAR_BITS(i32 %120, i32 %121)
  %123 = load %struct.m48t59_private*, %struct.m48t59_private** %8, align 8
  %124 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %123, i32 0, i32 0
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %109, %44
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i32 @M48T59_WRITE(i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
