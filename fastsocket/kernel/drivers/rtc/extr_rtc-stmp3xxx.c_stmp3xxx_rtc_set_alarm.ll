; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32 }
%struct.stmp3xxx_rtc_data = type { i64 }

@HW_RTC_ALARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @stmp3xxx_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stmp3xxx_rtc_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.stmp3xxx_rtc_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.stmp3xxx_rtc_data* %8, %struct.stmp3xxx_rtc_data** %6, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 0
  %11 = call i32 @rtc_tm_to_time(i32* %10, i64* %5)
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %6, align 8
  %14 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HW_RTC_ALARM, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @__raw_writel(i64 %12, i64 %17)
  ret i32 0
}

declare dso_local %struct.stmp3xxx_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
