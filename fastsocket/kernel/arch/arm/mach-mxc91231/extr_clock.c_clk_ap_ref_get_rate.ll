; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_ap_ref_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_ap_ref_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CRMAP_ASCSR = common dso_local global i32 0, align 4
@MXC_CRMAP_ACSR = common dso_local global i32 0, align 4
@MXC_CRMAP_ASCSR_APISEL = common dso_local global i32 0, align 4
@MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_ACSR_ADS_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_ACSR_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @clk_ap_ref_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_ap_ref_get_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %10 = load i32, i32* @MXC_CRMAP_ASCSR, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MXC_CRMAP_ACSR, align 4
  %13 = call i32 @__raw_readl(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MXC_CRMAP_ASCSR_APISEL, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MXC_CRMAP_ACSR_ADS_OFFSET, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MXC_CRMAP_ACSR_ACS, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_get_rate(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 1
  %44 = sdiv i32 %39, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %2, align 8
  br label %57

46:                                               ; preds = %1
  %47 = load %struct.clk*, %struct.clk** %3, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_get_rate(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 1
  %55 = mul nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %46, %35
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
