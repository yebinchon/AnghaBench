; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_hclk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_hclk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @hclk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclk_set_rate(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %20 [
    i32 1, label %13
    i32 2, label %14
    i32 4, label %17
  ]

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, 2
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %2, %17, %14, %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__raw_writel(i32 %21, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.clk*, %struct.clk** %3, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
