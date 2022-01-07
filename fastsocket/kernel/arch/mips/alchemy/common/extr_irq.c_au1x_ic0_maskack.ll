; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic0_maskack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic0_maskack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU1000_INTC0_INT_BASE = common dso_local global i32 0, align 4
@IC0_WAKECLR = common dso_local global i32 0, align 4
@IC0_MASKCLR = common dso_local global i32 0, align 4
@IC0_RISINGCLR = common dso_local global i32 0, align 4
@IC0_FALLINGCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @au1x_ic0_maskack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1x_ic0_maskack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AU1000_INTC0_INT_BASE, align 4
  %6 = sub i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @IC0_WAKECLR, align 4
  %10 = call i32 @au_writel(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* @IC0_MASKCLR, align 4
  %14 = call i32 @au_writel(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @IC0_RISINGCLR, align 4
  %18 = call i32 @au_writel(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @IC0_FALLINGCLR, align 4
  %22 = call i32 @au_writel(i32 %20, i32 %21)
  %23 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
