; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_tau_6xx.c_set_thresholds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_tau_6xx.c_set_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SPRN_THRM1 = common dso_local global i32 0, align 4
@tau = common dso_local global %struct.TYPE_2__* null, align 8
@THRM1_V = common dso_local global i32 0, align 4
@THRM1_TID = common dso_local global i32 0, align 4
@SPRN_THRM2 = common dso_local global i32 0, align 4
@THRM1_TIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_thresholds(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @SPRN_THRM1, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @THRM1_THRES(i32 %8)
  %10 = load i32, i32* @THRM1_V, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @THRM1_TID, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mtspr(i32 %3, i32 %13)
  %15 = load i32, i32* @SPRN_THRM2, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @THRM1_THRES(i32 %20)
  %22 = load i32, i32* @THRM1_V, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtspr(i32 %15, i32 %23)
  ret void
}

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @THRM1_THRES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
