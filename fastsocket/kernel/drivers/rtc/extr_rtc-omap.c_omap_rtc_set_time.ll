; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_RTC_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_SECONDS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @omap_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %6 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %7 = call i64 @tm2bcd(%struct.rtc_time* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = call i32 (...) @local_irq_disable()
  %14 = call i32 (...) @rtc_wait_not_busy()
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OMAP_RTC_YEARS_REG, align 4
  %19 = call i32 @rtc_write(i32 %17, i32 %18)
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OMAP_RTC_MONTHS_REG, align 4
  %24 = call i32 @rtc_write(i32 %22, i32 %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OMAP_RTC_DAYS_REG, align 4
  %29 = call i32 @rtc_write(i32 %27, i32 %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OMAP_RTC_HOURS_REG, align 4
  %34 = call i32 @rtc_write(i32 %32, i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OMAP_RTC_MINUTES_REG, align 4
  %39 = call i32 @rtc_write(i32 %37, i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OMAP_RTC_SECONDS_REG, align 4
  %44 = call i32 @rtc_write(i32 %42, i32 %43)
  %45 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %12, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(...) #1

declare dso_local i32 @rtc_write(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
