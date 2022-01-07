; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_suspend_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_suspend_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@wake_from_pci = common dso_local global i64 0, align 8
@pci_pm_state = common dso_local global i32 0, align 4
@deep_sleeping = common dso_local global i64 0, align 8
@pmc_regs = common dso_local global %struct.TYPE_2__* null, align 8
@PMCCR1_PME_EN = common dso_local global i32 0, align 4
@PMCCR_SLPEN = common dso_local global i32 0, align 4
@PMCCR_DLPEN = common dso_local global i32 0, align 4
@PMCER_ALL = common dso_local global i32 0, align 4
@PMCCR1_POWER_OFF = common dso_local global i32 0, align 4
@immrbase = common dso_local global i32 0, align 4
@PMCER_PMCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc83xx_suspend_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc83xx_suspend_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @EAGAIN, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @wake_from_pci, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @pci_pm_state, align 4
  %10 = load i64, i64* @deep_sleeping, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 3, i32 2
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %70

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @in_be32(i32* %20)
  %22 = load i32, i32* @PMCCR1_PME_EN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @out_be32(i32* %18, i32 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* @PMCCR_SLPEN, align 4
  %29 = load i32, i32* @PMCCR_DLPEN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @out_be32(i32* %27, i32 %30)
  %32 = load i64, i64* @deep_sleeping, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %25
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* @PMCER_ALL, align 4
  %38 = call i32 @out_be32(i32* %36, i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @in_be32(i32* %42)
  %44 = load i32, i32* @PMCCR1_POWER_OFF, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @out_be32(i32* %40, i32 %45)
  %47 = call i32 (...) @enable_kernel_fp()
  %48 = load i32, i32* @immrbase, align 4
  %49 = call i32 @mpc83xx_enter_deep_sleep(i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @in_be32(i32* %53)
  %55 = load i32, i32* @PMCCR1_POWER_OFF, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @out_be32(i32* %51, i32 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* @PMCER_PMCI, align 4
  %62 = call i32 @out_be32(i32* %60, i32 %61)
  br label %69

63:                                               ; preds = %25
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* @PMCER_PMCI, align 4
  %67 = call i32 @out_be32(i32* %65, i32 %66)
  %68 = call i32 (...) @mpc6xx_enter_standby()
  br label %69

69:                                               ; preds = %63, %34
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %15
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @in_be32(i32* %74)
  %76 = load i32, i32* @PMCCR1_PME_EN, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @out_be32(i32* %72, i32 %78)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @enable_kernel_fp(...) #1

declare dso_local i32 @mpc83xx_enter_deep_sleep(i32) #1

declare dso_local i32 @mpc6xx_enter_standby(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
