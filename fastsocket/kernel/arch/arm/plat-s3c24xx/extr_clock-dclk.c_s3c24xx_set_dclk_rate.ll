; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_set_dclk_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_clock-dclk.c_s3c24xx_set_dclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@s3c24xx_dclk0 = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_DCLKCON_DCLK0_DIV_MASK = common dso_local global i64 0, align 8
@S3C2410_DCLKCON_DCLK0_CMP_MASK = common dso_local global i64 0, align 8
@s3c24xx_dclk1 = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2410_DCLKCON_DCLK1_DIV_MASK = common dso_local global i64 0, align 8
@S3C2410_DCLKCON_DCLK1_CMP_MASK = common dso_local global i64 0, align 8
@S3C24XX_DCLKCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @s3c24xx_set_dclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_set_dclk_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @s3c24xx_calc_div(%struct.clk* %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = icmp eq %struct.clk* %18, @s3c24xx_dclk0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i64, i64* @S3C2410_DCLKCON_DCLK0_DIV_MASK, align 8
  %22 = load i64, i64* @S3C2410_DCLKCON_DCLK0_CMP_MASK, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @S3C2410_DCLKCON_DCLK0_DIV(i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = udiv i64 %27, 2
  %29 = call i64 @S3C2410_DCLKCON_DCLK0_CMP(i64 %28)
  %30 = or i64 %25, %29
  store i64 %30, i64* %7, align 8
  br label %49

31:                                               ; preds = %17
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = icmp eq %struct.clk* %32, @s3c24xx_dclk1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i64, i64* @S3C2410_DCLKCON_DCLK1_DIV_MASK, align 8
  %36 = load i64, i64* @S3C2410_DCLKCON_DCLK1_CMP_MASK, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @S3C2410_DCLKCON_DCLK1_DIV(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  %42 = udiv i64 %41, 2
  %43 = call i64 @S3C2410_DCLKCON_DCLK1_CMP(i64 %42)
  %44 = or i64 %39, %43
  store i64 %44, i64* %7, align 8
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @clk_get_rate(i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = udiv i64 %53, %54
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @S3C24XX_DCLKCON, align 4
  %59 = call i64 @__raw_readl(i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  %63 = load i64, i64* %7, align 8
  %64 = or i64 %62, %63
  %65 = load i32, i32* @S3C24XX_DCLKCON, align 4
  %66 = call i32 @__raw_writel(i64 %64, i32 %65)
  %67 = load %struct.clk*, %struct.clk** %4, align 8
  %68 = getelementptr inbounds %struct.clk, %struct.clk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %49, %45, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @s3c24xx_calc_div(%struct.clk*, i64) #1

declare dso_local i64 @S3C2410_DCLKCON_DCLK0_DIV(i64) #1

declare dso_local i64 @S3C2410_DCLKCON_DCLK0_CMP(i64) #1

declare dso_local i64 @S3C2410_DCLKCON_DCLK1_DIV(i64) #1

declare dso_local i64 @S3C2410_DCLKCON_DCLK1_CMP(i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i64 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
