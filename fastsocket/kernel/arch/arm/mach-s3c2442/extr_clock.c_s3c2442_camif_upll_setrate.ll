; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2442/extr_clock.c_s3c2442_camif_upll_setrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2442/extr_clock.c_s3c2442_camif_upll_setrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C2440_CAMDIVN = common dso_local global i32 0, align 4
@S3C2442_CAMDIVN_CAMCLK_DIV3 = common dso_local global i64 0, align 8
@S3C2440_CAMDIVN_CAMCLK_SEL = common dso_local global i64 0, align 8
@S3C2440_CAMDIVN_CAMCLK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @s3c2442_camif_upll_setrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2442_camif_upll_setrate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @clk_get_rate(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @S3C2440_CAMDIVN, align 4
  %12 = call i64 @__raw_readl(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @s3c2442_camif_upll_round(%struct.clk* %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* @S3C2442_CAMDIVN_CAMCLK_DIV3, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @S3C2440_CAMDIVN_CAMCLK_SEL, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %56

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = udiv i64 %29, %30
  %32 = icmp eq i64 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* @S3C2440_CAMDIVN_CAMCLK_SEL, align 8
  %35 = load i64, i64* %6, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @S3C2442_CAMDIVN_CAMCLK_DIV3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %55

40:                                               ; preds = %28
  %41 = load i64, i64* @S3C2440_CAMDIVN_CAMCLK_MASK, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* @S3C2440_CAMDIVN_CAMCLK_SEL, align 8
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = udiv i64 %48, %49
  %51 = udiv i64 %50, 2
  %52 = sub i64 %51, 1
  %53 = load i64, i64* %6, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %40, %33
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @S3C2440_CAMDIVN, align 4
  %59 = call i32 @__raw_writel(i64 %57, i32 %58)
  ret i32 0
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @s3c2442_camif_upll_round(%struct.clk*, i64) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
