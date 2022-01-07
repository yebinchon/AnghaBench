; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CRMAP_AMLPMRE1 = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB = common dso_local global i32 0, align 4
@MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC1EN_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC2EN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @clk_sdhc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_sdhc_disable(%struct.clk* %0) #0 {
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
  switch i32 %11, label %34 [
    i32 0, label %12
    i32 1, label %23
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET, align 4
  %14 = shl i32 7, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @MXC_CRMAP_APRB_SDHC1EN_OFFSET, align 4
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET, align 4
  %25 = shl i32 7, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @MXC_CRMAP_APRB_SDHC2EN_OFFSET, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %1, %23, %12
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MXC_CRMAP_AMLPMRE1, align 4
  %37 = call i32 @__raw_writel(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MXC_CRMAP_APRB, align 4
  %40 = call i32 @__raw_writel(i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
