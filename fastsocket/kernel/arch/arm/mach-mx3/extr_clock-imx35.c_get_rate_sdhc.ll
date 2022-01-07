; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_sdhc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_sdhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_BASE = common dso_local global i64 0, align 8
@CCM_PDR3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_sdhc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_sdhc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %6 = load i64, i64* @CCM_BASE, align 8
  %7 = load i64, i64* @CCM_PDR3, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @__raw_readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i64 (...) @get_rate_arm()
  store i64 %14, i64* %5, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call i64 (...) @get_rate_ppll()
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.clk*, %struct.clk** %2, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %29
  ]

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, 63
  store i64 %24, i64* %4, align 8
  br label %33

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = lshr i64 %26, 8
  %28 = and i64 %27, 63
  store i64 %28, i64* %4, align 8
  br label %33

29:                                               ; preds = %17
  %30 = load i64, i64* %3, align 8
  %31 = lshr i64 %30, 16
  %32 = and i64 %31, 63
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %29, %25, %22
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @get_3_3_div(i64 %35)
  %37 = udiv i64 %34, %36
  ret i64 %37
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @get_rate_arm(...) #1

declare dso_local i64 @get_rate_ppll(...) #1

declare dso_local i64 @get_3_3_div(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
