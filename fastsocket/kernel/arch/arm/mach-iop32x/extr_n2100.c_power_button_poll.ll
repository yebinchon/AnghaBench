; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop32x/extr_n2100.c_power_button_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop32x/extr_n2100.c_power_button_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@N2100_POWER_BUTTON = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@power_button_poll_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @power_button_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_button_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @N2100_POWER_BUTTON, align 4
  %4 = call i64 @gpio_line_get(i32 %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @ctrl_alt_del()
  br label %15

8:                                                ; preds = %1
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @power_button_poll_timer, i32 0, i32 0), align 8
  %14 = call i32 @add_timer(%struct.TYPE_3__* @power_button_poll_timer)
  br label %15

15:                                               ; preds = %8, %6
  ret void
}

declare dso_local i64 @gpio_line_get(i32) #1

declare dso_local i32 @ctrl_alt_del(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
