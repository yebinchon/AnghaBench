; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_reset.c_chipcHw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_reset.c_chipcHw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MM_ADDR_IO_ARAM = common dso_local global i64 0, align 8
@INTCHW_INTC0 = common dso_local global i32 0, align 4
@INTCHW_INTC1 = common dso_local global i32 0, align 4
@INTCHW_SINTC = common dso_local global i32 0, align 4
@REG_LOCAL_IRQ_SAVE = common dso_local global i32 0, align 4
@chipcHw_REG_SOFT_RESET_CHIP_SOFT = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_BYPASS_SELECT = common dso_local global i32 0, align 4
@pChipcHw = common dso_local global %struct.TYPE_2__* null, align 8
@chipcHw_reset_run_from_aram = common dso_local global i32 0, align 4
@MM_IO_BASE_ARAM = common dso_local global i64 0, align 8
@CSP_CACHE_FLUSH_ALL = common dso_local global i32 0, align 4
@REG_LOCAL_IRQ_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chipcHw_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32 (...)*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @MM_ADDR_IO_ARAM, align 8
  %6 = inttoptr i64 %5 to i32 (...)*
  store i32 (...)* %6, i32 (...)** %4, align 8
  %7 = load i32, i32* @INTCHW_INTC0, align 4
  %8 = call i32 @intcHw_irq_disable(i32 %7, i32 -1)
  %9 = load i32, i32* @INTCHW_INTC1, align 4
  %10 = call i32 @intcHw_irq_disable(i32 %9, i32 -1)
  %11 = load i32, i32* @INTCHW_SINTC, align 4
  %12 = call i32 @intcHw_irq_disable(i32 %11, i32 -1)
  %13 = load i32, i32* @REG_LOCAL_IRQ_SAVE, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @chipcHw_REG_SOFT_RESET_CHIP_SOFT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @chipcHw_REG_SOFT_RESET_CHIP_SOFT, align 4
  %20 = call i32 @chipcHw_softReset(i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @chipcHw_REG_PLL_CLOCK_BYPASS_SELECT, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @chipcHw_REG_PLL_CLOCK_BYPASS_SELECT, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %44, %21
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* @chipcHw_reset_run_from_aram, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @MM_IO_BASE_ARAM, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i64, i64* @MM_IO_BASE_ARAM, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, -509546481
  br i1 %52, label %32, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @CSP_CACHE_FLUSH_ALL, align 4
  %55 = load i32 (...)*, i32 (...)** %4, align 8
  %56 = call i32 (...) %55()
  %57 = load i32, i32* @REG_LOCAL_IRQ_RESTORE, align 4
  ret void
}

declare dso_local i32 @intcHw_irq_disable(i32, i32) #1

declare dso_local i32 @chipcHw_softReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
