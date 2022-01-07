; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_rtc_update_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_rtc_update_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }

@RCNR = common dso_local global i64 0, align 8
@RTSR = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@RTSR_ALE = common dso_local global i32 0, align 4
@RTSR_AL = common dso_local global i32 0, align 4
@RTAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @rtc_update_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_update_alarm(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca %struct.rtc_time, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i64, i64* @RCNR, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @rtc_time_to_tm(i64 %10, %struct.rtc_time* %4)
  %12 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %13 = call i32 @rtc_next_alarm_time(%struct.rtc_time* %3, %struct.rtc_time* %4, %struct.rtc_time* %12)
  %14 = call i32 @rtc_tm_to_time(%struct.rtc_time* %3, i64* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %31

18:                                               ; preds = %8
  %19 = load i32, i32* @RTSR, align 4
  %20 = load i32, i32* @RTSR_HZE, align 4
  %21 = load i32, i32* @RTSR_ALE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RTSR_AL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  store i32 %25, i32* @RTSR, align 4
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* @RTAR, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @RCNR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %8, label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_next_alarm_time(%struct.rtc_time*, %struct.rtc_time*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
