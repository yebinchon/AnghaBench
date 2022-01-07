; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_msysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_msysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@S3C2443_CLKSRC = common dso_local global i32 0, align 4
@S3C2443_CLKSRC_MSYSCLK_MPLL = common dso_local global i64 0, align 8
@S3C2443_CLKSRC_EXTCLK_DIV = common dso_local global i64 0, align 8
@clk_mpll = common dso_local global %struct.clk zeroinitializer, align 8
@clk_mdivclk = common dso_local global %struct.clk zeroinitializer, align 8
@clk_mpllref = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2443_setparent_msysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2443_setparent_msysclk(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @S3C2443_CLKSRC, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @S3C2443_CLKSRC_MSYSCLK_MPLL, align 8
  %10 = load i64, i64* @S3C2443_CLKSRC_EXTCLK_DIV, align 8
  %11 = or i64 %9, %10
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load %struct.clk*, %struct.clk** %5, align 8
  %16 = icmp eq %struct.clk* %15, @clk_mpll
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @S3C2443_CLKSRC_MSYSCLK_MPLL, align 8
  %19 = load i64, i64* %6, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %6, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.clk*, %struct.clk** %5, align 8
  %23 = icmp eq %struct.clk* %22, @clk_mdivclk
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* @S3C2443_CLKSRC_EXTCLK_DIV, align 8
  %26 = load i64, i64* %6, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %35

28:                                               ; preds = %21
  %29 = load %struct.clk*, %struct.clk** %5, align 8
  %30 = icmp ne %struct.clk* %29, @clk_mpllref
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @S3C2443_CLKSRC, align 4
  %39 = call i32 @__raw_writel(i64 %37, i32 %38)
  %40 = load %struct.clk*, %struct.clk** %5, align 8
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 0
  store %struct.clk* %40, %struct.clk** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
