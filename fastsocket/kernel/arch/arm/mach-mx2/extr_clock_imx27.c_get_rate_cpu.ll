; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CHIP_REV_2_0 = common dso_local global i64 0, align 8
@CCM_CSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_cpu(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = call i64 (...) @mx27_revision()
  %6 = load i64, i64* @CHIP_REV_2_0, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @CCM_CSCR, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  %11 = ashr i32 %10, 12
  %12 = and i32 %11, 3
  store i32 %12, i32* %3, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @CCM_CSCR, align 4
  %15 = call i32 @__raw_readl(i32 %14)
  %16 = ashr i32 %15, 13
  %17 = and i32 %16, 7
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @clk_get_rate(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %23, %26
  ret i64 %27
}

declare dso_local i64 @mx27_revision(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
