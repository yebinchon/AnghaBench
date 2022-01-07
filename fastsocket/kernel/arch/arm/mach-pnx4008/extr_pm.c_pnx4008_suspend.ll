; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_pm.c_pnx4008_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_pm.c_pnx4008_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pll4_clk = common dso_local global i32 0, align 4
@SE_PIN_BASE_INT = common dso_local global i32 0, align 4
@SE_INT_BASE_INT = common dso_local global i32 0, align 4
@saved_sram = common dso_local global i8* null, align 8
@SRAM_VA = common dso_local global i64 0, align 8
@pnx4008_cpu_suspend_sz = common dso_local global i32 0, align 4
@pnx4008_cpu_suspend = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pnx4008_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx4008_suspend() #0 {
  %1 = alloca void ()*, align 8
  %2 = call i32 (...) @local_irq_disable()
  %3 = call i32 (...) @local_fiq_disable()
  %4 = load i32, i32* @pll4_clk, align 4
  %5 = call i32 @clk_disable(i32 %4)
  %6 = load i32, i32* @SE_PIN_BASE_INT, align 4
  %7 = call i32 @START_INT_RSR_REG(i32 %6)
  %8 = call i32 @__raw_writel(i32 -1, i32 %7)
  %9 = load i32, i32* @SE_INT_BASE_INT, align 4
  %10 = call i32 @START_INT_RSR_REG(i32 %9)
  %11 = call i32 @__raw_writel(i32 -1, i32 %10)
  %12 = load i8*, i8** @saved_sram, align 8
  %13 = load i64, i64* @SRAM_VA, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* @pnx4008_cpu_suspend_sz, align 4
  %16 = call i32 @memcpy(i8* %12, i8* %14, i32 %15)
  %17 = call i32 (...) @flush_cache_all()
  %18 = load i64, i64* @SRAM_VA, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8*, i8** @pnx4008_cpu_suspend, align 8
  %21 = load i32, i32* @pnx4008_cpu_suspend_sz, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  %23 = load i64, i64* @SRAM_VA, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to void ()*
  store void ()* %25, void ()** %1, align 8
  %26 = load void ()*, void ()** %1, align 8
  call void %26()
  %27 = load i64, i64* @SRAM_VA, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8*, i8** @saved_sram, align 8
  %30 = load i32, i32* @pnx4008_cpu_suspend_sz, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* @pll4_clk, align 4
  %33 = call i32 @clk_enable(i32 %32)
  %34 = call i32 (...) @local_fiq_enable()
  %35 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_fiq_disable(...) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @START_INT_RSR_REG(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @local_fiq_enable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
