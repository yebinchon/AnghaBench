; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_firi_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_firi_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MXC_CCM_PDR1 = common dso_local global i32 0, align 4
@MXC_CCM_PDR1_FIRI_PODF_MASK = common dso_local global i64 0, align 8
@MXC_CCM_PDR1_FIRI_PRE_PODF_MASK = common dso_local global i64 0, align 8
@MXC_CCM_PDR1_FIRI_PRE_PODF_OFFSET = common dso_local global i64 0, align 8
@MXC_CCM_PDR1_FIRI_PODF_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @firi_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firi_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = udiv i64 %18, %19
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @__calc_pre_post_dividers(i64 %27, i64* %8, i64* %9)
  %29 = load i32, i32* @MXC_CCM_PDR1, align 4
  %30 = call i64 @__raw_readl(i32 %29)
  %31 = load i64, i64* @MXC_CCM_PDR1_FIRI_PODF_MASK, align 8
  %32 = load i64, i64* @MXC_CCM_PDR1_FIRI_PRE_PODF_MASK, align 8
  %33 = or i64 %31, %32
  %34 = xor i64 %33, -1
  %35 = and i64 %30, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  %38 = load i64, i64* @MXC_CCM_PDR1_FIRI_PRE_PODF_OFFSET, align 8
  %39 = shl i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, 1
  %44 = load i64, i64* @MXC_CCM_PDR1_FIRI_PODF_OFFSET, align 8
  %45 = shl i64 %43, %44
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @MXC_CCM_PDR1, align 4
  %50 = call i32 @__raw_writel(i64 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %26, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__calc_pre_post_dividers(i64, i64*, i64*) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
