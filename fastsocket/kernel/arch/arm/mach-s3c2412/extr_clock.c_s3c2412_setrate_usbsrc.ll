; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setrate_usbsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setrate_usbsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C2410_CLKDIVN = common dso_local global i32 0, align 4
@S3C2412_CLKDIVN_USB48DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @s3c2412_setrate_usbsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_setrate_usbsrc(%struct.clk* %0, i64 %1) #0 {
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
  %11 = load i32, i32* @S3C2410_CLKDIVN, align 4
  %12 = call i64 @__raw_readl(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @s3c2412_roundrate_usbsrc(%struct.clk* %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = udiv i64 %16, %17
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* @S3C2412_CLKDIVN_USB48DIV, align 8
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %29

24:                                               ; preds = %2
  %25 = load i64, i64* @S3C2412_CLKDIVN_USB48DIV, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %6, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @S3C2410_CLKDIVN, align 4
  %32 = call i32 @__raw_writel(i64 %30, i32 %31)
  ret i32 0
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @s3c2412_roundrate_usbsrc(%struct.clk*, i64) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
