; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_power_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_power_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@has_panicked = common dso_local global i64 0, align 8
@shuting_down = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@POWERDOWN_FREQ = common dso_local global i32 0, align 4
@blink_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@power_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@power_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POWERDOWN_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip32_power_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip32_power_button() #0 {
  %1 = load i64, i64* @has_panicked, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %26

4:                                                ; preds = %0
  %5 = load i32, i32* @shuting_down, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @SIGINT, align 4
  %9 = call i64 @kill_cad_pid(i32 %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %4
  %12 = call i32 (...) @ip32_machine_power_off()
  br label %13

13:                                               ; preds = %11, %7
  store i32 1, i32* @shuting_down, align 4
  %14 = load i32, i32* @POWERDOWN_FREQ, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blink_timer, i32 0, i32 0), align 4
  %15 = load i32, i32* @POWERDOWN_FREQ, align 4
  %16 = call i32 @blink_timeout(i32 %15)
  %17 = call i32 @init_timer(%struct.TYPE_5__* @power_timer)
  %18 = load i32, i32* @power_timeout, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @power_timer, i32 0, i32 1), align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @POWERDOWN_TIMEOUT, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @power_timer, i32 0, i32 0), align 8
  %25 = call i32 @add_timer(%struct.TYPE_5__* @power_timer)
  br label %26

26:                                               ; preds = %13, %3
  ret void
}

declare dso_local i64 @kill_cad_pid(i32, i32) #1

declare dso_local i32 @ip32_machine_power_off(...) #1

declare dso_local i32 @blink_timeout(i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
