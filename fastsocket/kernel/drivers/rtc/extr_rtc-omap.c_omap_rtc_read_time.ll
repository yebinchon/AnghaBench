; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }

@OMAP_RTC_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_YEARS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @omap_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = call i32 (...) @local_irq_disable()
  %6 = call i32 (...) @rtc_wait_not_busy()
  %7 = load i32, i32* @OMAP_RTC_SECONDS_REG, align 4
  %8 = call i8* @rtc_read(i32 %7)
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @OMAP_RTC_MINUTES_REG, align 4
  %12 = call i8* @rtc_read(i32 %11)
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @OMAP_RTC_HOURS_REG, align 4
  %16 = call i8* @rtc_read(i32 %15)
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @OMAP_RTC_DAYS_REG, align 4
  %20 = call i8* @rtc_read(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @OMAP_RTC_MONTHS_REG, align 4
  %24 = call i8* @rtc_read(i32 %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @OMAP_RTC_YEARS_REG, align 4
  %28 = call i8* @rtc_read(i32 %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = call i32 (...) @local_irq_enable()
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = call i32 @bcd2tm(%struct.rtc_time* %32)
  ret i32 0
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(...) #1

declare dso_local i8* @rtc_read(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
