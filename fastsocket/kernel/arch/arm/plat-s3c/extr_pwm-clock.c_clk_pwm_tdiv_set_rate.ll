; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_tdiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_tdiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }
%struct.pwm_tdiv_clk = type { i64 }

@S3C2410_TCFG1 = common dso_local global i32 0, align 4
@S3C2410_TCFG1_MUX_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @clk_pwm_tdiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pwm_tdiv_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pwm_tdiv_clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call %struct.pwm_tdiv_clk* @to_tdiv(%struct.clk* %10)
  store %struct.pwm_tdiv_clk* %11, %struct.pwm_tdiv_clk** %6, align 8
  %12 = load i32, i32* @S3C2410_TCFG1, align 4
  %13 = call i64 @__raw_readl(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.clk*, %struct.clk** %4, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S3C2410_TCFG1_SHIFT(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = lshr i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @S3C2410_TCFG1_MUX_MASK, align 8
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load %struct.clk*, %struct.clk** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @clk_round_rate(%struct.clk* %27, i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %33, 16
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.pwm_tdiv_clk*, %struct.pwm_tdiv_clk** %6, align 8
  %41 = getelementptr inbounds %struct.pwm_tdiv_clk, %struct.pwm_tdiv_clk* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @pwm_cfg_src_is_tclk(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.pwm_tdiv_clk*, %struct.pwm_tdiv_clk** %6, align 8
  %47 = call i32 @clk_pwm_tdiv_update(%struct.pwm_tdiv_clk* %46)
  br label %48

48:                                               ; preds = %45, %38
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.pwm_tdiv_clk* @to_tdiv(%struct.clk*) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @S3C2410_TCFG1_SHIFT(i32) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @pwm_cfg_src_is_tclk(i64) #1

declare dso_local i32 @clk_pwm_tdiv_update(%struct.pwm_tdiv_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
