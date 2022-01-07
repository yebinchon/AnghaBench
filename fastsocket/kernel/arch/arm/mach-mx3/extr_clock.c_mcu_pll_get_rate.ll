; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_mcu_pll_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_mcu_pll_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CCM_CCMR = common dso_local global i32 0, align 4
@MXC_CCM_CCMR_MPE = common dso_local global i64 0, align 8
@MXC_CCM_CCMR_MDS = common dso_local global i64 0, align 8
@ckih_clk = common dso_local global i32 0, align 4
@MXC_CCM_MPCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @mcu_pll_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mcu_pll_get_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load i32, i32* @MXC_CCM_CCMR, align 4
  %7 = call i64 @__raw_readl(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MXC_CCM_CCMR_MPE, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MXC_CCM_CCMR_MDS, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %1
  %18 = call i64 @clk_get_rate(i32* @ckih_clk)
  store i64 %18, i64* %2, align 8
  br label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @MXC_CCM_MPCTL, align 4
  %21 = call i64 @__raw_readl(i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 (...) @pll_ref_get_rate()
  %24 = call i64 @mxc_decode_pll(i64 %22, i32 %23)
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i64 @mxc_decode_pll(i64, i32) #1

declare dso_local i32 @pll_ref_get_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
