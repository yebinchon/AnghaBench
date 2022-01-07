; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c244x-clock.c_s3c2440_setparent_armclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c244x-clock.c_s3c2440_setparent_armclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@clk_f = common dso_local global %struct.clk zeroinitializer, align 8
@clk_h = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2440_CAMDIVN_DVSEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@S3C2440_CAMDIVN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2440_setparent_armclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2440_setparent_armclk(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load %struct.clk*, %struct.clk** %5, align 8
  %9 = icmp eq %struct.clk* %8, @clk_f
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp eq %struct.clk* %12, @clk_h
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @S3C2440_CAMDIVN_DVSEN, align 8
  store i64 %15, i64* %7, align 8
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %10
  %21 = load %struct.clk*, %struct.clk** %5, align 8
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  store %struct.clk* %21, %struct.clk** %23, align 8
  %24 = load i32, i32* @S3C2440_CAMDIVN, align 4
  %25 = call i64 @__raw_readl(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* @S3C2440_CAMDIVN_DVSEN, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @S3C2440_CAMDIVN, align 4
  %35 = call i32 @__raw_writel(i64 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
