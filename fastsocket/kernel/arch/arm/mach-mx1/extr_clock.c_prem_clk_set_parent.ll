; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_prem_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_prem_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_CSCR = common dso_local global i32 0, align 4
@prem_clk_clocks = common dso_local global i32 0, align 4
@CCM_CSCR_SYSTEM_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @prem_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prem_clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load i32, i32* @CCM_CSCR, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @prem_clk_clocks, align 4
  %11 = load i32, i32* @prem_clk_clocks, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load %struct.clk*, %struct.clk** %5, align 8
  %14 = call i32 @_clk_can_use_parent(i32 %10, i32 %12, %struct.clk* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %25 [
    i32 0, label %16
    i32 1, label %21
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @CCM_CSCR_SYSTEM_SEL, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @CCM_CSCR_SYSTEM_SEL, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CCM_CSCR, align 4
  %30 = call i32 @__raw_writel(i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @_clk_can_use_parent(i32, i32, %struct.clk*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
