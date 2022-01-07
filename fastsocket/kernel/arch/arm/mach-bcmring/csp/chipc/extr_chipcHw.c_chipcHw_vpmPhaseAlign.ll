; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_chipcHw_vpmPhaseAlign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_chipcHw_vpmPhaseAlign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@chipcHw_REV_NUMBER_A0 = common dso_local global i64 0, align 8
@chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE = common dso_local global i32 0, align 4
@pChipcHw = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_PHASE_ADJUST_COUNT = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipcHw_vpmPhaseAlign() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 (...) @chipcHw_getChipRevisionNumber()
  %6 = load i64, i64* @chipcHw_REV_NUMBER_A0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @vpmPhaseAlignA0()
  store i32 %9, i32* %1, align 4
  br label %75

10:                                               ; preds = %0
  %11 = call i32 (...) @chipcHw_getVpmPhaseControl()
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = call i32 (...) @chipcHw_vpmHwPhaseAlignDisable()
  %19 = call i32 (...) @chipcHw_vpmSwPhaseAlignEnable()
  br label %20

20:                                               ; preds = %45, %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = call i32 (...) @chipcHw_getVpmHwPhaseAlignStatus()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 15
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 15
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %1, align 4
  br label %75

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = call i32 @reg32_write(i32* %47, i32 %57)
  %59 = call i32 @udelay(i32 1)
  %60 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %20

67:                                               ; preds = %20
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  store i32 -1, i32* %1, align 4
  br label %75

75:                                               ; preds = %68, %37, %8
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i64 @chipcHw_getChipRevisionNumber(...) #1

declare dso_local i32 @vpmPhaseAlignA0(...) #1

declare dso_local i32 @chipcHw_getVpmPhaseControl(...) #1

declare dso_local i32 @chipcHw_vpmHwPhaseAlignDisable(...) #1

declare dso_local i32 @chipcHw_vpmSwPhaseAlignEnable(...) #1

declare dso_local i32 @chipcHw_getVpmHwPhaseAlignStatus(...) #1

declare dso_local i32 @reg32_write(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
