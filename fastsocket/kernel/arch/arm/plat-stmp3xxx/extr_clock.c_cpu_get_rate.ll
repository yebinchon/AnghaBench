; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_cpu_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_cpu_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REGS_CLKCTRL_BASE = common dso_local global i64 0, align 8
@HW_CLKCTRL_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @cpu_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpu_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 18
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @__raw_readl(i64 %13)
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %14, %17
  %19 = and i32 %18, 63
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = sdiv i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %24 = load i64, i64* @HW_CLKCTRL_CPU, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  %27 = and i32 %26, 63
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %3, align 8
  %30 = sdiv i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 9
  %33 = sdiv i64 %32, 10
  %34 = mul nsw i64 %33, 10
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.clk*, %struct.clk** %2, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
