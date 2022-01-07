; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_clocks.c_au1xxx_calc_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_clocks.c_au1xxx_calc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_lock = common dso_local global i32 0, align 4
@SYS_CPUPLL = common dso_local global i32 0, align 4
@AU1000_SRC_CLK = common dso_local global i32 0, align 4
@mips_hpt_frequency = common dso_local global i64 0, align 8
@SYS_POWERCTRL = common dso_local global i32 0, align 4
@CONFIG_SOC_AU1000_FREQUENCY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @au1xxx_calc_clock() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @time_lock, i64 %3)
  %5 = call i64 (...) @au1xxx_cpu_has_pll_wo()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i64 396000000, i64* %1, align 8
  br label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @SYS_CPUPLL, align 4
  %10 = call i32 @au_readl(i32 %9)
  %11 = and i32 %10, 63
  %12 = load i32, i32* @AU1000_SRC_CLK, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %8, %7
  %16 = load i64, i64* %1, align 8
  store i64 %16, i64* @mips_hpt_frequency, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i32, i32* @SYS_POWERCTRL, align 4
  %19 = call i32 @au_readl(i32 %18)
  %20 = and i32 %19, 3
  %21 = add nsw i32 %20, 2
  %22 = mul nsw i32 2, %21
  %23 = mul nsw i32 %22, 16
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %17, %24
  %26 = call i32 @set_au1x00_uart_baud_base(i64 %25)
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @time_lock, i64 %27)
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @set_au1x00_speed(i64 %29)
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @au1xxx_cpu_has_pll_wo(...) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @set_au1x00_uart_baud_base(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_au1x00_speed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
