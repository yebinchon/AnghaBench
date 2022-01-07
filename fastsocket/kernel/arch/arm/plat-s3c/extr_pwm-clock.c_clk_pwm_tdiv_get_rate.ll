; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_tdiv_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_tdiv_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S3C2410_TCFG1 = common dso_local global i32 0, align 4
@S3C2410_TCFG1_MUX_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @clk_pwm_tdiv_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pwm_tdiv_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load i32, i32* @S3C2410_TCFG1, align 4
  %6 = call i64 @__raw_readl(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @S3C2410_TCFG1_SHIFT(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = lshr i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @S3C2410_TCFG1_MUX_MASK, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @pwm_cfg_src_is_tclk(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = call %struct.TYPE_2__* @to_tdiv(%struct.clk* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @tcfg_to_divisor(i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.clk*, %struct.clk** %2, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_get_rate(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = udiv i32 %31, %32
  %34 = zext i32 %33 to i64
  ret i64 %34
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @S3C2410_TCFG1_SHIFT(i32) #1

declare dso_local i64 @pwm_cfg_src_is_tclk(i64) #1

declare dso_local %struct.TYPE_2__* @to_tdiv(%struct.clk*) #1

declare dso_local i32 @tcfg_to_divisor(i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
