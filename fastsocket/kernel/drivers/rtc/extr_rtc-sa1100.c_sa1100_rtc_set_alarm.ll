; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }

@sa1100_rtc_lock = common dso_local global i32 0, align 4
@RTSR_ALE = common dso_local global i32 0, align 4
@RTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sa1100_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %7 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %7, i32 0, i32 1
  %9 = call i32 @rtc_update_alarm(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @RTSR_ALE, align 4
  %19 = load i32, i32* @RTSR, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @RTSR, align 4
  br label %26

21:                                               ; preds = %12
  %22 = load i32, i32* @RTSR_ALE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @RTSR, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @RTSR, align 4
  br label %26

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc_update_alarm(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
