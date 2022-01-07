; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setparent_usysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_clock.c_s3c2412_setparent_usysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@S3C2412_CLKSRC = common dso_local global i32 0, align 4
@clk_urefclk = common dso_local global %struct.clk zeroinitializer, align 8
@S3C2412_CLKSRC_USYSCLK_UPLL = common dso_local global i64 0, align 8
@clk_upll = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2412_setparent_usysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_setparent_usysclk(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @S3C2412_CLKSRC, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = icmp eq %struct.clk* %9, @clk_urefclk
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* @S3C2412_CLKSRC_USYSCLK_UPLL, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %6, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.clk*, %struct.clk** %5, align 8
  %18 = icmp eq %struct.clk* %17, @clk_upll
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @S3C2412_CLKSRC_USYSCLK_UPLL, align 8
  %21 = load i64, i64* %6, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = load %struct.clk*, %struct.clk** %4, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 0
  store %struct.clk* %28, %struct.clk** %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @S3C2412_CLKSRC, align 4
  %33 = call i32 @__raw_writel(i64 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
