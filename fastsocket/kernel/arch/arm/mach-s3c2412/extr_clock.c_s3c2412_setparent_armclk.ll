; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setparent_armclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setparent_armclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@clk_msysclk = common dso_local global %struct.clk zeroinitializer, align 8
@clk_f = common dso_local global %struct.clk zeroinitializer, align 8
@clk_h = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2412_CLKDIVN_DVSEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_CLKDIVN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2412_setparent_armclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_setparent_armclk(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = icmp eq %struct.clk* %9, @clk_msysclk
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp eq %struct.clk* %12, @clk_f
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i64 0, i64* %8, align 8
  br label %24

15:                                               ; preds = %11
  %16 = load %struct.clk*, %struct.clk** %5, align 8
  %17 = icmp eq %struct.clk* %16, @clk_h
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* @S3C2412_CLKDIVN_DVSEN, align 8
  store i64 %19, i64* %8, align 8
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.clk*, %struct.clk** %5, align 8
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 0
  store %struct.clk* %25, %struct.clk** %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load i32, i32* @S3C2410_CLKDIVN, align 4
  %31 = call i64 @__raw_readl(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* @S3C2412_CLKDIVN_DVSEN, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @S3C2410_CLKDIVN, align 4
  %41 = call i32 @__raw_writel(i64 %39, i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %24, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

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
