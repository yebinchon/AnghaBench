; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }

@rtc_lock = common dso_local global i32 0, align 4
@ECMPLREG = common dso_local global i32 0, align 4
@ECMPMREG = common dso_local global i32 0, align 4
@ECMPHREG = common dso_local global i32 0, align 4
@alarm_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @vr41xx_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr41xx_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store %struct.rtc_time* %10, %struct.rtc_time** %8, align 8
  %11 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %12 = load i32, i32* @ECMPLREG, align 4
  %13 = call i64 @rtc1_read(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* @ECMPMREG, align 4
  %15 = call i64 @rtc1_read(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @ECMPHREG, align 4
  %17 = call i64 @rtc1_read(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @alarm_enabled, align 4
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %22 = load i64, i64* %7, align 8
  %23 = shl i64 %22, 17
  %24 = load i64, i64* %6, align 8
  %25 = shl i64 %24, 1
  %26 = or i64 %23, %25
  %27 = load i64, i64* %5, align 8
  %28 = lshr i64 %27, 15
  %29 = or i64 %26, %28
  %30 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %31 = call i32 @rtc_time_to_tm(i64 %29, %struct.rtc_time* %30)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @rtc1_read(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
