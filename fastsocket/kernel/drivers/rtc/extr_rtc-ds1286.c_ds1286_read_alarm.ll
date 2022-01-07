; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.ds1286_priv = type { i32 }

@RTC_MINUTES_ALARM = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i32 0, align 4
@RTC_DAY_ALARM = common dso_local global i32 0, align 4
@RTC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1286_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.ds1286_priv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1286_priv* %9, %struct.ds1286_priv** %5, align 8
  %10 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %15 = load i32, i32* @RTC_MINUTES_ALARM, align 4
  %16 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %14, i32 %15)
  %17 = and i32 %16, 127
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %22 = load i32, i32* @RTC_HOURS_ALARM, align 4
  %23 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %21, i32 %22)
  %24 = and i32 %23, 31
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %29 = load i32, i32* @RTC_DAY_ALARM, align 4
  %30 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %28, i32 %29)
  %31 = and i32 %30, 7
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %36 = load i32, i32* @RTC_CMD, align 4
  %37 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %35, i32 %36)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %6, align 1
  %39 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  ret i32 0
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ds1286_rtc_read(%struct.ds1286_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
