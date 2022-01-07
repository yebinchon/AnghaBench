; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bfin_rtc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @bfin_rtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_rtc_reset(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfin_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.bfin_rtc* %7, %struct.bfin_rtc** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg_stamp(%struct.device* %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @bfin_rtc_sync_pending(%struct.device* %10)
  %12 = call i32 @bfin_write_RTC_PREN(i32 1)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bfin_write_RTC_ICTL(i32 %13)
  %15 = call i32 @bfin_write_RTC_ALARM(i32 0)
  %16 = call i32 @bfin_write_RTC_ISTAT(i32 65535)
  %17 = load %struct.bfin_rtc*, %struct.bfin_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i32 @bfin_rtc_sync_pending(%struct.device*) #1

declare dso_local i32 @bfin_write_RTC_PREN(i32) #1

declare dso_local i32 @bfin_write_RTC_ICTL(i32) #1

declare dso_local i32 @bfin_write_RTC_ALARM(i32) #1

declare dso_local i32 @bfin_write_RTC_ISTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
