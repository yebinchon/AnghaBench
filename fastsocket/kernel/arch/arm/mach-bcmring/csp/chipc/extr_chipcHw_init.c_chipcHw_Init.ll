; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_init.c_chipcHw_Init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_init.c_chipcHw_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@chipcHw_REG_STICKY_CHIP_WARM_RESET = common dso_local global i32 0, align 4
@chipcHw_REG_STICKY_CHIP_SOFT_RESET = common dso_local global i32 0, align 4
@pChipcHw = common dso_local global %struct.TYPE_5__* null, align 8
@chipcHw_REG_ACLKClock_CLK_DIV_MASK = common dso_local global i32 0, align 4
@chipcHw_CLOCK_ARM = common dso_local global i32 0, align 4
@chipcHw_CLOCK_BUS = common dso_local global i32 0, align 4
@chipcHw_CLOCK_VPM = common dso_local global i32 0, align 4
@chipcHw_CLOCK_DDR = common dso_local global i32 0, align 4
@chipcHw_CLOCK_RTBUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chipcHw_Init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = call i32 (...) @delay_init()
  %4 = call i32 (...) @chipcHw_getStickyBits()
  %5 = load i32, i32* @chipcHw_REG_STICKY_CHIP_WARM_RESET, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @chipcHw_pll1Enable(i32 %11, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @chipcHw_pll2Enable(i32 %18)
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @chipcHw_REG_STICKY_CHIP_WARM_RESET, align 4
  %22 = call i32 @chipcHw_clearStickyBits(i32 %21)
  br label %23

23:                                               ; preds = %20, %8
  %24 = load i32, i32* @chipcHw_REG_STICKY_CHIP_SOFT_RESET, align 4
  %25 = call i32 @chipcHw_clearStickyBits(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pChipcHw, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @chipcHw_REG_ACLKClock_CLK_DIV_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @chipcHw_REG_ACLKClock_CLK_DIV_MASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pChipcHw, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @chipcHw_CLOCK_ARM, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = call i32 @chipcHw_setClockFrequency(i32 %40, i32 %47)
  %49 = load i32, i32* @chipcHw_CLOCK_BUS, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @chipcHw_setClockFrequency(i32 %49, i32 %52)
  %54 = load i32, i32* @chipcHw_CLOCK_VPM, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = call i32 @chipcHw_setClockFrequency(i32 %54, i32 %61)
  %63 = load i32, i32* @chipcHw_CLOCK_DDR, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = call i32 @chipcHw_setClockFrequency(i32 %63, i32 %70)
  %72 = load i32, i32* @chipcHw_CLOCK_RTBUS, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 2
  %77 = call i32 @chipcHw_setClockFrequency(i32 %72, i32 %76)
  ret void
}

declare dso_local i32 @delay_init(...) #1

declare dso_local i32 @chipcHw_getStickyBits(...) #1

declare dso_local i32 @chipcHw_pll1Enable(i32, i32) #1

declare dso_local i32 @chipcHw_pll2Enable(i32) #1

declare dso_local i32 @chipcHw_clearStickyBits(i32) #1

declare dso_local i32 @chipcHw_setClockFrequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
