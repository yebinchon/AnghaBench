; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_sdhc_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CRMAP_APRB = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC1_ISEL_MASK = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC1_ISEL_OFFSET = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC2_ISEL_MASK = common dso_local global i32 0, align 4
@MXC_CRMAP_APRB_SDHC2_ISEL_OFFSET = common dso_local global i32 0, align 4
@ckih_clk = common dso_local global %struct.clk zeroinitializer, align 4
@ckih_x2_clk = common dso_local global %struct.clk zeroinitializer, align 4
@usb_clk = common dso_local global %struct.clk zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.clk*)* @clk_sdhc_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_sdhc_parent(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %8 = load i32, i32* @MXC_CRMAP_APRB, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @MXC_CRMAP_APRB_SDHC1_ISEL_MASK, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @MXC_CRMAP_APRB_SDHC1_ISEL_OFFSET, align 4
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @MXC_CRMAP_APRB_SDHC2_ISEL_MASK, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MXC_CRMAP_APRB_SDHC2_ISEL_OFFSET, align 4
  store i32 %18, i32* %7, align 4
  br label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %30 [
    i32 0, label %28
    i32 1, label %29
  ]

28:                                               ; preds = %21
  store %struct.clk* @ckih_clk, %struct.clk** %2, align 8
  br label %31

29:                                               ; preds = %21
  store %struct.clk* @ckih_x2_clk, %struct.clk** %2, align 8
  br label %31

30:                                               ; preds = %21
  store %struct.clk* @usb_clk, %struct.clk** %2, align 8
  br label %31

31:                                               ; preds = %30, %29, %28
  %32 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %32
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
