; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_ipg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CHIP_REV_2_0 = common dso_local global i64 0, align 8
@CCM_CSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_ipg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_ipg(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = call i64 (...) @mx27_revision()
  %7 = load i64, i64* @CHIP_REV_2_0, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %2, align 8
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @CCM_CSCR, align 4
  %16 = call i32 @__raw_readl(i32 %15)
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.clk*, %struct.clk** %3, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @clk_get_rate(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  %28 = udiv i64 %25, %27
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %20, %9
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i64 @mx27_revision(...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
