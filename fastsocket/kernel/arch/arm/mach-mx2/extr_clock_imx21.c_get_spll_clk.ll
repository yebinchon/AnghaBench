; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c_get_spll_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c_get_spll_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_SPCTL0 = common dso_local global i32 0, align 4
@CCM_SPCTL0_PD_MASK = common dso_local global i64 0, align 8
@CCM_SPCTL0_PD_OFFSET = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFD_MASK = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFD_OFFSET = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFI_MASK = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFI_OFFSET = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFN_MASK = common dso_local global i64 0, align 8
@CCM_SPCTL0_MFN_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_spll_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_spll_clk(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @CCM_SPCTL0, align 4
  %15 = call i64 @__raw_readl(i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @CCM_SPCTL0_PD_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @CCM_SPCTL0_PD_OFFSET, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @CCM_SPCTL0_MFD_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @CCM_SPCTL0_MFD_OFFSET, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @CCM_SPCTL0_MFI_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @CCM_SPCTL0_MFI_OFFSET, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @CCM_SPCTL0_MFN_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @CCM_SPCTL0_MFN_OFFSET, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %36, 5
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %41

39:                                               ; preds = %1
  %40 = load i64, i64* %5, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i64 [ 5, %38 ], [ %40, %39 ]
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = mul i64 2, %43
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  %50 = call i32 @do_div(i64 %47, i64 %49)
  %51 = load i64, i64* %4, align 8
  %52 = mul i64 2, %51
  %53 = load i64, i64* %5, align 8
  %54 = mul i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @do_div(i64 %57, i64 %59)
  %61 = load i64, i64* %9, align 8
  ret i64 %61
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
