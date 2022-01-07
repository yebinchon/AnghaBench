; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bfin_rtc = type { i32 }

@RTC_ISTAT_SEC = common dso_local global i32 0, align 4
@RTC_ISTAT_ALARM = common dso_local global i32 0, align 4
@RTC_ISTAT_ALARM_DAY = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @bfin_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfin_rtc*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.bfin_rtc* %10, %struct.bfin_rtc** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_dbg_stamp(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @bfin_rtc_sync_pending(%struct.device* %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %40 [
    i32 128, label %16
    i32 129, label %21
    i32 130, label %27
    i32 131, label %32
  ]

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_dbg_stamp(%struct.device* %17)
  %19 = load i32, i32* @RTC_ISTAT_SEC, align 4
  %20 = call i32 @bfin_rtc_int_set(i32 %19)
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_dbg_stamp(%struct.device* %22)
  %24 = load i32, i32* @RTC_ISTAT_SEC, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @bfin_rtc_int_clear(i32 %25)
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_dbg_stamp(%struct.device* %28)
  %30 = load %struct.bfin_rtc*, %struct.bfin_rtc** %7, align 8
  %31 = call i32 @bfin_rtc_int_set_alarm(%struct.bfin_rtc* %30)
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_dbg_stamp(%struct.device* %33)
  %35 = load i32, i32* @RTC_ISTAT_ALARM, align 4
  %36 = load i32, i32* @RTC_ISTAT_ALARM_DAY, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = call i32 @bfin_rtc_int_clear(i32 %38)
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_dbg_stamp(%struct.device* %41)
  %43 = load i32, i32* @ENOIOCTLCMD, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %32, %27, %21, %16
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i32 @bfin_rtc_sync_pending(%struct.device*) #1

declare dso_local i32 @bfin_rtc_int_set(i32) #1

declare dso_local i32 @bfin_rtc_int_clear(i32) #1

declare dso_local i32 @bfin_rtc_int_set_alarm(%struct.bfin_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
