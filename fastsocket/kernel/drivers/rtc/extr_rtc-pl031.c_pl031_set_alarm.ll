; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.pl031_local = type { i64 }

@RTC_MR = common dso_local global i64 0, align 8
@RTC_MIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pl031_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pl031_local*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pl031_local* @dev_get_drvdata(%struct.device* %7)
  store %struct.pl031_local* %8, %struct.pl031_local** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  %11 = call i32 @rtc_tm_to_time(i32* %10, i64* %6)
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.pl031_local*, %struct.pl031_local** %5, align 8
  %15 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RTC_MR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @__raw_writel(i32 %13, i64 %18)
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.pl031_local*, %struct.pl031_local** %5, align 8
  %27 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTC_MIS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i32 %25, i64 %30)
  ret i32 0
}

declare dso_local %struct.pl031_local* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
