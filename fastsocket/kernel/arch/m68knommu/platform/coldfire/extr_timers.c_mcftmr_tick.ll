; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_timers.c_mcftmr_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_timers.c_mcftmr_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFTIMER_TER_CAP = common dso_local global i32 0, align 4
@MCFTIMER_TER_REF = common dso_local global i32 0, align 4
@MCFTIMER_TER = common dso_local global i32 0, align 4
@mcftmr_cycles_per_jiffy = common dso_local global i64 0, align 8
@mcftmr_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcftmr_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcftmr_tick(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @MCFTIMER_TER_CAP, align 4
  %6 = load i32, i32* @MCFTIMER_TER_REF, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MCFTIMER_TER, align 4
  %9 = call i32 @TA(i32 %8)
  %10 = call i32 @__raw_writeb(i32 %7, i32 %9)
  %11 = load i64, i64* @mcftmr_cycles_per_jiffy, align 8
  %12 = load i32, i32* @mcftmr_cnt, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @mcftmr_cnt, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @arch_timer_interrupt(i32 %16, i8* %17)
  ret i32 %18
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @arch_timer_interrupt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
