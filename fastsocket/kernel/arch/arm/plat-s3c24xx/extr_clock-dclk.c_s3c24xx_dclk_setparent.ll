; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_dclk_setparent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_dclk_setparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk* }

@clk_upll = common dso_local global %struct.clk zeroinitializer, align 8
@clk_p = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@S3C24XX_DCLKCON = common dso_local global i32 0, align 4
@S3C2410_DCLKCON_DCLK0EN = common dso_local global i64 0, align 8
@S3C2410_DCLKCON_DCLK0_UCLK = common dso_local global i64 0, align 8
@S3C2410_DCLKCON_DCLK1_UCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c24xx_dclk_setparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dclk_setparent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load %struct.clk*, %struct.clk** %5, align 8
  %9 = icmp eq %struct.clk* %8, @clk_upll
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp eq %struct.clk* %12, @clk_p
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %10
  %20 = load %struct.clk*, %struct.clk** %5, align 8
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 1
  store %struct.clk* %20, %struct.clk** %22, align 8
  %23 = load i32, i32* @S3C24XX_DCLKCON, align 4
  %24 = call i64 @__raw_readl(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @S3C2410_DCLKCON_DCLK0EN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* @S3C2410_DCLKCON_DCLK0_UCLK, align 8
  %35 = load i64, i64* %6, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %42

37:                                               ; preds = %30
  %38 = load i64, i64* @S3C2410_DCLKCON_DCLK0_UCLK, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %37, %33
  br label %56

43:                                               ; preds = %19
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @S3C2410_DCLKCON_DCLK1_UCLK, align 8
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %55

50:                                               ; preds = %43
  %51 = load i64, i64* @S3C2410_DCLKCON_DCLK1_UCLK, align 8
  %52 = xor i64 %51, -1
  %53 = load i64, i64* %6, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @S3C24XX_DCLKCON, align 4
  %59 = call i32 @__raw_writel(i64 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
