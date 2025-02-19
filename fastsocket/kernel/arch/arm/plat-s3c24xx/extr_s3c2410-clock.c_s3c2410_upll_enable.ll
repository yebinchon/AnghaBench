; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-clock.c_s3c2410_upll_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-clock.c_s3c2410_upll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C2410_CLKSLOW = common dso_local global i32 0, align 4
@S3C2410_CLKSLOW_UCLK_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @s3c2410_upll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_upll_enable(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @S3C2410_CLKSLOW, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* @S3C2410_CLKSLOW_UCLK_OFF, align 8
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @S3C2410_CLKSLOW_UCLK_OFF, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @S3C2410_CLKSLOW, align 4
  %24 = call i32 @__raw_writel(i64 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S3C2410_CLKSLOW_UCLK_OFF, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @udelay(i32 200)
  br label %34

34:                                               ; preds = %32, %27, %21
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
