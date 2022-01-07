; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_clk_cpu_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_clk_cpu_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@CCM_CSCR = common dso_local global i32 0, align 4
@CHIP_REV_2_0 = common dso_local global i64 0, align 8
@mpll_main1_clk = common dso_local global %struct.clk zeroinitializer, align 8
@CCM_CSCR_ARM_SRC = common dso_local global i32 0, align 4
@mpll_main2_clk = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @clk_cpu_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_cpu_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @CCM_CSCR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load %struct.clk*, %struct.clk** %10, align 8
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp eq %struct.clk* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = call i64 (...) @mx27_revision()
  %17 = load i64, i64* @CHIP_REV_2_0, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.clk*, %struct.clk** %5, align 8
  %21 = icmp eq %struct.clk* %20, @mpll_main1_clk
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @CCM_CSCR_ARM_SRC, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = icmp eq %struct.clk* %27, @mpll_main2_clk
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @CCM_CSCR_ARM_SRC, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CCM_CSCR, align 4
  %41 = call i32 @__raw_writel(i32 %39, i32 %40)
  %42 = load %struct.clk*, %struct.clk** %5, align 8
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 0
  store %struct.clk* %42, %struct.clk** %44, align 8
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %15
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %38, %34, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @mx27_revision(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
