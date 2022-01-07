; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c__clk_perclkx_recalc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c__clk_perclkx_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@CCM_PCDR1_PERDIV1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @_clk_perclkx_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_clk_perclkx_recalc(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.clk*, %struct.clk** %3, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  store i64 0, i64* %2, align 8
  br label %34

20:                                               ; preds = %14
  %21 = call i32 (...) @PCDR1()
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  %26 = ashr i32 %21, %25
  %27 = load i32, i32* @CCM_PCDR1_PERDIV1_MASK, align 4
  %28 = and i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  %33 = udiv i64 %30, %32
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %20, %19
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @PCDR1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
