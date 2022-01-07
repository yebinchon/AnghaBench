; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu-led.c_pmu_led_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu-led.c_pmu_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.led_classdev = type { i32 }

@pmu_blink_lock = common dso_local global i32 0, align 4
@requested_change = common dso_local global i32 0, align 4
@pmu_blink_req = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@pmu_sys_suspended = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @pmu_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @pmu_blink_lock, i64 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %11 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %2
  store i32 0, i32* @requested_change, align 4
  br label %12

10:                                               ; preds = %2
  store i32 1, i32* @requested_change, align 4
  br label %12

11:                                               ; preds = %2
  br label %22

12:                                               ; preds = %10, %9
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmu_blink_req, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @pmu_sys_suspended, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @requested_change, align 4
  %20 = call i32 @pmu_request(%struct.TYPE_3__* @pmu_blink_req, i32* null, i32 4, i32 238, i32 4, i32 0, i32 %19)
  br label %21

21:                                               ; preds = %18, %15, %12
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @pmu_blink_lock, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pmu_request(%struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
