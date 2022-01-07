; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_epllref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_epllref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@S3C2443_CLKSRC = common dso_local global i32 0, align 4
@S3C2443_CLKSRC_EPLLREF_MASK = common dso_local global i64 0, align 8
@clk_xtal = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2443_CLKSRC_EPLLREF_XTAL = common dso_local global i64 0, align 8
@clk_ext = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2443_CLKSRC_EPLLREF_EXTCLK = common dso_local global i64 0, align 8
@clk_mpllref = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2443_setparent_epllref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2443_setparent_epllref(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @S3C2443_CLKSRC, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @S3C2443_CLKSRC_EPLLREF_MASK, align 8
  %10 = xor i64 %9, -1
  %11 = load i64, i64* %6, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load %struct.clk*, %struct.clk** %5, align 8
  %14 = icmp eq %struct.clk* %13, @clk_xtal
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* @S3C2443_CLKSRC_EPLLREF_XTAL, align 8
  %17 = load i64, i64* %6, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %6, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.clk*, %struct.clk** %5, align 8
  %21 = icmp eq %struct.clk* %20, @clk_ext
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* @S3C2443_CLKSRC_EPLLREF_EXTCLK, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = icmp ne %struct.clk* %27, @clk_mpllref
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @S3C2443_CLKSRC, align 4
  %37 = call i32 @__raw_writel(i64 %35, i32 %36)
  %38 = load %struct.clk*, %struct.clk** %5, align 8
  %39 = load %struct.clk*, %struct.clk** %4, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 0
  store %struct.clk* %38, %struct.clk** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
