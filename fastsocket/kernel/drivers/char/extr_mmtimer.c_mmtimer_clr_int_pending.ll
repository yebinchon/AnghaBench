; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_clr_int_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_clr_int_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SH_EVENT_OCCURRED_ALIAS = common dso_local global i32 0, align 4
@SH_EVENT_OCCURRED_RTC1_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mmtimer_clr_int_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmtimer_clr_int_pending(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SH_EVENT_OCCURRED_ALIAS, align 4
  %4 = call i64 @LOCAL_MMR_ADDR(i32 %3)
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* @SH_EVENT_OCCURRED_RTC1_INT_MASK, align 4
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %6, %7
  %9 = call i32 @HUB_S(i32* %5, i32 %8)
  ret void
}

declare dso_local i32 @HUB_S(i32*, i32) #1

declare dso_local i64 @LOCAL_MMR_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
