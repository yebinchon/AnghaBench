; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.TYPE_2__*, %struct.dpll_data* }
%struct.TYPE_2__ = type { i64 }
%struct.dpll_data = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@dpll3_ck = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @omap3_noncore_dpll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_noncore_dpll_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll_data*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = icmp eq %struct.clk* %6, @dpll3_ck
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 2
  %14 = load %struct.dpll_data*, %struct.dpll_data** %13, align 8
  store %struct.dpll_data* %14, %struct.dpll_data** %5, align 8
  %15 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %16 = icmp ne %struct.dpll_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %11
  %21 = load %struct.clk*, %struct.clk** %3, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %25 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.clk*, %struct.clk** %3, align 8
  %41 = call i32 @_omap3_noncore_dpll_bypass(%struct.clk* %40)
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %20
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %47 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.clk*, %struct.clk** %3, align 8
  %53 = call i32 @_omap3_noncore_dpll_lock(%struct.clk* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %42, %30
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.clk*, %struct.clk** %3, align 8
  %59 = call i64 @omap2_get_dpll_rate(%struct.clk* %58)
  %60 = load %struct.clk*, %struct.clk** %3, align 8
  %61 = getelementptr inbounds %struct.clk, %struct.clk* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %17, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @_omap3_noncore_dpll_bypass(%struct.clk*) #1

declare dso_local i32 @_omap3_noncore_dpll_lock(%struct.clk*) #1

declare dso_local i64 @omap2_get_dpll_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
