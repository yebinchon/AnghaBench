; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_timer.c_microblaze_timer0_start_oneshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_timer.c_microblaze_timer0_start_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_BASE = common dso_local global i64 0, align 8
@TLR0 = common dso_local global i64 0, align 8
@TCSR0 = common dso_local global i64 0, align 8
@TCSR_LOAD = common dso_local global i64 0, align 8
@TCSR_TINT = common dso_local global i64 0, align 8
@TCSR_ENIT = common dso_local global i64 0, align 8
@TCSR_ENT = common dso_local global i64 0, align 8
@TCSR_ARHT = common dso_local global i64 0, align 8
@TCSR_UDT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @microblaze_timer0_start_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @microblaze_timer0_start_oneshot(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i64, i64* @TIMER_BASE, align 8
  %8 = load i64, i64* @TLR0, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @out_be32(i64 %9, i64 %10)
  %12 = load i64, i64* @TIMER_BASE, align 8
  %13 = load i64, i64* @TCSR0, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @TCSR_LOAD, align 8
  %16 = call i32 @out_be32(i64 %14, i64 %15)
  %17 = load i64, i64* @TIMER_BASE, align 8
  %18 = load i64, i64* @TCSR0, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @TCSR_TINT, align 8
  %21 = load i64, i64* @TCSR_ENIT, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @TCSR_ENT, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @TCSR_ARHT, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @TCSR_UDT, align 8
  %28 = or i64 %26, %27
  %29 = call i32 @out_be32(i64 %19, i64 %28)
  ret void
}

declare dso_local i32 @out_be32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
