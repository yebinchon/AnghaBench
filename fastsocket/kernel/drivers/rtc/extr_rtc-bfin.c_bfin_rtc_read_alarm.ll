; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.bfin_rtc = type { i32 }

@RTC_ISTAT_ALARM = common dso_local global i32 0, align 4
@RTC_ISTAT_ALARM_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @bfin_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.bfin_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.bfin_rtc* %7, %struct.bfin_rtc** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg_stamp(%struct.device* %8)
  %10 = load %struct.bfin_rtc*, %struct.bfin_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @bfin_rtc_sync_pending(%struct.device* %15)
  %17 = call i32 (...) @bfin_read_RTC_ICTL()
  %18 = load i32, i32* @RTC_ISTAT_ALARM, align 4
  %19 = load i32, i32* @RTC_ISTAT_ALARM_DAY, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret i32 0
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i32 @bfin_rtc_sync_pending(%struct.device*) #1

declare dso_local i32 @bfin_read_RTC_ICTL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
