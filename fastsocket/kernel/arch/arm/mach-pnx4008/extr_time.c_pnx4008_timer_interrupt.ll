; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_time.c_pnx4008_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_time.c_pnx4008_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HSTIM_INT = common dso_local global i32 0, align 4
@MATCH0_INT = common dso_local global i32 0, align 4
@HSTIM_MATCH0 = common dso_local global i32 0, align 4
@LATCH = common dso_local global i32 0, align 4
@HSTIM_COUNTER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pnx4008_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx4008_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @HSTIM_INT, align 4
  %6 = call i32 @__raw_readl(i32 %5)
  %7 = load i32, i32* @MATCH0_INT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %22, %10
  %12 = call i32 (...) @timer_tick()
  %13 = load i32, i32* @HSTIM_MATCH0, align 4
  %14 = call i32 @__raw_readl(i32 %13)
  %15 = load i32, i32* @LATCH, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @HSTIM_MATCH0, align 4
  %18 = call i32 @__raw_writel(i32 %16, i32 %17)
  %19 = load i32, i32* @MATCH0_INT, align 4
  %20 = load i32, i32* @HSTIM_INT, align 4
  %21 = call i32 @__raw_writel(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* @HSTIM_MATCH0, align 4
  %24 = call i32 @__raw_readl(i32 %23)
  %25 = load i32, i32* @HSTIM_COUNTER, align 4
  %26 = call i32 @__raw_readl(i32 %25)
  %27 = sub nsw i32 %24, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %11, label %29

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @timer_tick(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
