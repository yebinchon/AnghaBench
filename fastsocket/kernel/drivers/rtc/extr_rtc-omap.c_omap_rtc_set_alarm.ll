; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @omap_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %7 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %8 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %7, i32 0, i32 1
  %9 = call i64 @tm2bcd(%struct.TYPE_2__* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = call i32 (...) @local_irq_disable()
  %16 = call i32 (...) @rtc_wait_not_busy()
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OMAP_RTC_ALARM_YEARS_REG, align 4
  %22 = call i32 @rtc_write(i32 %20, i32 %21)
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OMAP_RTC_ALARM_MONTHS_REG, align 4
  %28 = call i32 @rtc_write(i32 %26, i32 %27)
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OMAP_RTC_ALARM_DAYS_REG, align 4
  %34 = call i32 @rtc_write(i32 %32, i32 %33)
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OMAP_RTC_ALARM_HOURS_REG, align 4
  %40 = call i32 @rtc_write(i32 %38, i32 %39)
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OMAP_RTC_ALARM_MINUTES_REG, align 4
  %46 = call i32 @rtc_write(i32 %44, i32 %45)
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OMAP_RTC_ALARM_SECONDS_REG, align 4
  %52 = call i32 @rtc_write(i32 %50, i32 %51)
  %53 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %54 = call i32 @rtc_read(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %14
  %60 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %68

63:                                               ; preds = %14
  %64 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %71 = call i32 @rtc_write(i32 %69, i32 %70)
  %72 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @tm2bcd(%struct.TYPE_2__*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(...) #1

declare dso_local i32 @rtc_write(i32, i32) #1

declare dso_local i32 @rtc_read(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
