; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock-cpg.c_sh_clk_div6_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock-cpg.c_sh_clk_div6_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @sh_clk_div6_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_clk_div6_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sh_clk_div6_set_rate(%struct.clk* %5, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** %2, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__raw_readl(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, -257
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__raw_writel(i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @sh_clk_div6_set_rate(%struct.clk*, i32, i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
