; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_tmrHw_setFreeRunningTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_tmrHw_setFreeRunningTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tmrHw_CONTROL_PERIODIC = common dso_local global i32 0, align 4
@pTmrHw = common dso_local global %struct.TYPE_2__* null, align 8
@tmrHw_CONTROL_ONESHOT = common dso_local global i32 0, align 4
@tmrHw_CONTROL_PRESCALE_256 = common dso_local global i32 0, align 4
@tmrHw_CONTROL_PRESCALE_16 = common dso_local global i32 0, align 4
@tmrHw_CONTROL_PRESCALE_1 = common dso_local global i32 0, align 4
@tmrHw_LOW_RESOLUTION_CLOCK = common dso_local global i32 0, align 4
@tmrHw_HIGH_RESOLUTION_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmrHw_setFreeRunningTimer(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @ResetTimer(i64 %7)
  %9 = load i32, i32* @tmrHw_CONTROL_PERIODIC, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @tmrHw_CONTROL_ONESHOT, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 64
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @tmrHw_CONTROL_PRESCALE_256, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  store i32 256, i32* %6, align 4
  br label %55

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @tmrHw_CONTROL_PRESCALE_16, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  store i32 16, i32* %6, align 4
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @tmrHw_CONTROL_PRESCALE_1, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i64, i64* %4, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @tmrHw_LOW_RESOLUTION_CLOCK, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @tmrHw_divide(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %58
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 2
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @tmrHw_HIGH_RESOLUTION_CLOCK, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @tmrHw_divide(i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %61
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ResetTimer(i64) #1

declare dso_local i32 @tmrHw_divide(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
