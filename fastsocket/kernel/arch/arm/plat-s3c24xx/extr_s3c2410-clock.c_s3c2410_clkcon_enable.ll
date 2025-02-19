; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-clock.c_s3c2410_clkcon_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-clock.c_s3c2410_clkcon_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C2410_CLKCON = common dso_local global i32 0, align 4
@S3C2410_CLKCON_IDLE = common dso_local global i64 0, align 8
@S3C2410_CLKCON_POWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2410_clkcon_enable(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @S3C2410_CLKCON, align 4
  %11 = call i64 @__raw_readl(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %6, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i64, i64* @S3C2410_CLKCON_IDLE, align 8
  %27 = load i64, i64* @S3C2410_CLKCON_POWER, align 8
  %28 = or i64 %26, %27
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @S3C2410_CLKCON, align 4
  %34 = call i32 @__raw_writel(i64 %32, i32 %33)
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
