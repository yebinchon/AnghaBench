; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_get_dpll_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_get_dpll_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.dpll_data* }
%struct.dpll_data = type { i64, i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@OMAP2XXX_EN_DPLL_LPBYPASS = common dso_local global i64 0, align 8
@OMAP2XXX_EN_DPLL_FRBYPASS = common dso_local global i64 0, align 8
@OMAP3XXX_EN_DPLL_LPBYPASS = common dso_local global i64 0, align 8
@OMAP3XXX_EN_DPLL_FRBYPASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_get_dpll_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpll_data*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %9 = load %struct.clk*, %struct.clk** %3, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  store %struct.dpll_data* %11, %struct.dpll_data** %8, align 8
  %12 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %13 = icmp ne %struct.dpll_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %17 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @__raw_readl(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %21 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %26 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @__ffs(i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = ashr i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = call i64 (...) @cpu_is_omap24xx()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %15
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @OMAP2XXX_EN_DPLL_LPBYPASS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @OMAP2XXX_EN_DPLL_FRBYPASS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %33
  %42 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %43 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %2, align 8
  br label %106

47:                                               ; preds = %37
  br label %67

48:                                               ; preds = %15
  %49 = call i64 (...) @cpu_is_omap34xx()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @OMAP3XXX_EN_DPLL_LPBYPASS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @OMAP3XXX_EN_DPLL_FRBYPASS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  %60 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %61 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %2, align 8
  br label %106

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %69 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @__raw_readl(i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %74 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %72, %75
  store i64 %76, i64* %5, align 8
  %77 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %78 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @__ffs(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = ashr i64 %81, %80
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %85 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %83, %86
  store i64 %87, i64* %6, align 8
  %88 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %89 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @__ffs(i64 %90)
  %92 = load i64, i64* %6, align 8
  %93 = ashr i64 %92, %91
  store i64 %93, i64* %6, align 8
  %94 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %95 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = mul nsw i64 %98, %99
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @do_div(i64 %101, i64 %103)
  %105 = load i64, i64* %4, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %67, %59, %41, %14
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
