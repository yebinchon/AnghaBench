; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_cnt32_to_63_keepwarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_cnt32_to_63_keepwarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cnt32_to_63_keepwarm_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cnt32_to_63_keepwarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnt32_to_63_keepwarm(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 %3, %4
  %6 = call i32 @round_jiffies(i64 %5)
  %7 = call i32 @mod_timer(i32* @cnt32_to_63_keepwarm_timer, i32 %6)
  %8 = call i32 (...) @sched_clock()
  ret void
}

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @sched_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
