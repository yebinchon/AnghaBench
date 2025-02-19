; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c_sched_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c_sched_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_tb = common dso_local global i64 0, align 8
@tb_to_ns_scale = common dso_local global i32 0, align 4
@tb_to_ns_shift = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sched_clock() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @__USE_RTC()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i64 (...) @get_rtc()
  store i64 %5, i64* %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = call i64 (...) @get_tb()
  %8 = load i64, i64* @boot_tb, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i32, i32* @tb_to_ns_scale, align 4
  %11 = call i64 @mulhdu(i64 %9, i32 %10)
  %12 = load i64, i64* @tb_to_ns_shift, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %6, %4
  %15 = load i64, i64* %1, align 8
  ret i64 %15
}

declare dso_local i64 @__USE_RTC(...) #1

declare dso_local i64 @get_rtc(...) #1

declare dso_local i64 @mulhdu(i64, i32) #1

declare dso_local i64 @get_tb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
