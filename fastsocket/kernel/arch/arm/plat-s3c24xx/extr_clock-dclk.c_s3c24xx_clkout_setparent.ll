; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_clkout_setparent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_clkout_setparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@clk_mpll = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_MPLL = common dso_local global i64 0, align 8
@clk_upll = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_UPLL = common dso_local global i64 0, align 8
@clk_f = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_FCLK = common dso_local global i64 0, align 8
@clk_h = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_HCLK = common dso_local global i64 0, align 8
@clk_p = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_PCLK = common dso_local global i64 0, align 8
@s3c24xx_clkout0 = common dso_local global %struct.clk zeroinitializer, align 8
@s3c24xx_dclk0 = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_MISCCR_CLK0_DCLK0 = common dso_local global i64 0, align 8
@s3c24xx_clkout1 = common dso_local global %struct.clk zeroinitializer, align 8
@s3c24xx_dclk1 = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_MISCCR_CLK0_MASK = common dso_local global i64 0, align 8
@S3C2410_MISCCR_CLK1_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c24xx_clkout_setparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_clkout_setparent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load %struct.clk*, %struct.clk** %5, align 8
  %9 = icmp eq %struct.clk* %8, @clk_mpll
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @S3C2410_MISCCR_CLK0_MPLL, align 8
  store i64 %11, i64* %7, align 8
  br label %57

12:                                               ; preds = %2
  %13 = load %struct.clk*, %struct.clk** %5, align 8
  %14 = icmp eq %struct.clk* %13, @clk_upll
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* @S3C2410_MISCCR_CLK0_UPLL, align 8
  store i64 %16, i64* %7, align 8
  br label %56

17:                                               ; preds = %12
  %18 = load %struct.clk*, %struct.clk** %5, align 8
  %19 = icmp eq %struct.clk* %18, @clk_f
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @S3C2410_MISCCR_CLK0_FCLK, align 8
  store i64 %21, i64* %7, align 8
  br label %55

22:                                               ; preds = %17
  %23 = load %struct.clk*, %struct.clk** %5, align 8
  %24 = icmp eq %struct.clk* %23, @clk_h
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @S3C2410_MISCCR_CLK0_HCLK, align 8
  store i64 %26, i64* %7, align 8
  br label %54

27:                                               ; preds = %22
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = icmp eq %struct.clk* %28, @clk_p
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @S3C2410_MISCCR_CLK0_PCLK, align 8
  store i64 %31, i64* %7, align 8
  br label %53

32:                                               ; preds = %27
  %33 = load %struct.clk*, %struct.clk** %4, align 8
  %34 = icmp eq %struct.clk* %33, @s3c24xx_clkout0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.clk*, %struct.clk** %5, align 8
  %37 = icmp eq %struct.clk* %36, @s3c24xx_dclk0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* @S3C2410_MISCCR_CLK0_DCLK0, align 8
  store i64 %39, i64* %7, align 8
  br label %52

40:                                               ; preds = %35, %32
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = icmp eq %struct.clk* %41, @s3c24xx_clkout1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.clk*, %struct.clk** %5, align 8
  %45 = icmp eq %struct.clk* %44, @s3c24xx_dclk1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @S3C2410_MISCCR_CLK0_DCLK0, align 8
  store i64 %47, i64* %7, align 8
  br label %51

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %20
  br label %56

56:                                               ; preds = %55, %15
  br label %57

57:                                               ; preds = %56, %10
  %58 = load %struct.clk*, %struct.clk** %5, align 8
  %59 = load %struct.clk*, %struct.clk** %4, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 0
  store %struct.clk* %58, %struct.clk** %60, align 8
  %61 = load %struct.clk*, %struct.clk** %4, align 8
  %62 = icmp eq %struct.clk* %61, @s3c24xx_clkout0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @S3C2410_MISCCR_CLK0_MASK, align 8
  store i64 %64, i64* %6, align 8
  br label %69

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = shl i64 %66, 4
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* @S3C2410_MISCCR_CLK1_MASK, align 8
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %65, %63
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @s3c2410_modify_misccr(i64 %70, i64 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %48
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @s3c2410_modify_misccr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
