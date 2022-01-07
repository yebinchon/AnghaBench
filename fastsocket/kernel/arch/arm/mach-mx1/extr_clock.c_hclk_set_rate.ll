; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_hclk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_hclk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CCM_CSCR = common dso_local global i32 0, align 4
@CCM_CSCR_BCLK_MASK = common dso_local global i32 0, align 4
@CCM_CSCR_BCLK_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @hclk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = udiv i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 16
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 1
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = udiv i64 %23, %25
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %19, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @CCM_CSCR, align 4
  %36 = call i32 @__raw_readl(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @CCM_CSCR_BCLK_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CCM_CSCR_BCLK_OFFSET, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CCM_CSCR, align 4
  %48 = call i32 @__raw_writel(i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
