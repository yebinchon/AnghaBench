; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.bfin_rtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bfin_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.bfin_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.bfin_rtc* %9, %struct.bfin_rtc** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @dev_dbg_stamp(%struct.device* %10)
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i32 @rtc_tm_to_time(%struct.rtc_time* %12, i64* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.bfin_rtc*, %struct.bfin_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @bfin_rtc_sync_pending(%struct.device* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @rtc_time_to_bfin(i64 %26)
  %28 = call i32 @bfin_write_RTC_STAT(i32 %27)
  %29 = load %struct.bfin_rtc*, %struct.bfin_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @bfin_rtc_sync_pending(%struct.device*) #1

declare dso_local i32 @bfin_write_RTC_STAT(i32) #1

declare dso_local i32 @rtc_time_to_bfin(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
