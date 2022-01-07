; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CRMAP_AMLPMRE1 = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB = common dso_local global i32 0, align 4
@MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC1EN_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC2EN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @clk_sdhc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sdhc_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load i32, i32* @MXC_CRMAP_AMLPMRE1, align 4
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MXC_CRMAP_APRB, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.clk*, %struct.clk** %2, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 0, label %12
    i32 1, label %21
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET, align 4
  %14 = shl i32 7, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @MXC_CRMAP_APRB_SDHC1EN_OFFSET, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET, align 4
  %23 = shl i32 7, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @MXC_CRMAP_APRB_SDHC2EN_OFFSET, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %1, %21, %12
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MXC_CRMAP_AMLPMRE1, align 4
  %33 = call i32 @__raw_writel(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MXC_CRMAP_APRB, align 4
  %36 = call i32 @__raw_writel(i32 %34, i32 %35)
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
