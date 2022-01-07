; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.bfin_rtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @bfin_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.bfin_rtc*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.bfin_rtc* %9, %struct.bfin_rtc** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_dbg_stamp(%struct.device* %10)
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  %14 = call i64 @rtc_tm_to_time(i32* %13, i64* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bfin_rtc*, %struct.bfin_rtc** %6, align 8
  %24 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @bfin_rtc_sync_pending(%struct.device* %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @rtc_time_to_bfin(i64 %27)
  %29 = call i32 @bfin_write_RTC_ALARM(i32 %28)
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load %struct.bfin_rtc*, %struct.bfin_rtc** %6, align 8
  %36 = call i32 @bfin_rtc_int_set_alarm(%struct.bfin_rtc* %35)
  br label %37

37:                                               ; preds = %34, %19
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @bfin_rtc_sync_pending(%struct.device*) #1

declare dso_local i32 @bfin_write_RTC_ALARM(i32) #1

declare dso_local i32 @rtc_time_to_bfin(i64) #1

declare dso_local i32 @bfin_rtc_int_set_alarm(%struct.bfin_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
