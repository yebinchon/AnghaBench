; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_ipg_per.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_ipg_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_BASE = common dso_local global i64 0, align 8
@CCM_PDR0 = common dso_local global i64 0, align 8
@CCM_PDR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_ipg_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_ipg_per(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %8 = load i64, i64* @CCM_BASE, align 8
  %9 = load i64, i64* @CCM_PDR0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @__raw_readl(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @CCM_BASE, align 8
  %13 = load i64, i64* @CCM_PDR4, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 67108864
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = lshr i64 %20, 19
  %22 = and i64 %21, 7
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = lshr i64 %23, 16
  %25 = and i64 %24, 7
  store i64 %25, i64* %7, align 8
  %26 = call i64 (...) @get_rate_arm()
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  %31 = mul i64 %28, %30
  %32 = udiv i64 %26, %31
  store i64 %32, i64* %2, align 8
  br label %40

33:                                               ; preds = %1
  %34 = load i64, i64* %4, align 8
  %35 = lshr i64 %34, 12
  %36 = and i64 %35, 7
  store i64 %36, i64* %6, align 8
  %37 = call i64 @get_rate_ahb(i32* null)
  %38 = load i64, i64* %6, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %33, %19
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @get_rate_arm(...) #1

declare dso_local i64 @get_rate_ahb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
