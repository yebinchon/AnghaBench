; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_ResetTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_ResetTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i64, i64 }

@pTmrHw = common dso_local global %struct.TYPE_2__* null, align 8
@tmrHw_CONTROL_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ResetTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetTimer(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @tmrHw_CONTROL_32BIT, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
