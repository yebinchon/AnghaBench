; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_scaler_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm-clock.c_clk_pwm_scaler_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C2410_TCFG0 = common dso_local global i32 0, align 4
@clk_timer_scaler = common dso_local global %struct.clk* null, align 8
@S3C2410_TCFG_PRESCALER1_MASK = common dso_local global i64 0, align 8
@S3C2410_TCFG_PRESCALER1_SHIFT = common dso_local global i64 0, align 8
@S3C2410_TCFG_PRESCALER0_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @clk_pwm_scaler_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pwm_scaler_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk*, %struct.clk** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @clk_pwm_scaler_round_rate(%struct.clk* %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @clk_get_rate(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load i32, i32* @S3C2410_TCFG0, align 4
  %23 = call i64 @__raw_readl(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = load %struct.clk*, %struct.clk** @clk_timer_scaler, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i64 1
  %27 = icmp eq %struct.clk* %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load i64, i64* @S3C2410_TCFG_PRESCALER1_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @S3C2410_TCFG_PRESCALER1_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %46

38:                                               ; preds = %2
  %39 = load i64, i64* @S3C2410_TCFG_PRESCALER0_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %38, %28
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @S3C2410_TCFG0, align 4
  %49 = call i32 @__raw_writel(i64 %47, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  ret i32 0
}

declare dso_local i64 @clk_pwm_scaler_round_rate(%struct.clk*, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
