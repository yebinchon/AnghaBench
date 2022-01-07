; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_hsmmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2443/extr_clock.c_s3c2443_setparent_hsmmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk* }

@S3C2443_SCLKCON = common dso_local global i32 0, align 4
@S3C2443_SCLKCON_HSMMCCLK_EXT = common dso_local global i64 0, align 8
@S3C2443_SCLKCON_HSMMCCLK_EPLL = common dso_local global i64 0, align 8
@clk_epll = common dso_local global %struct.clk zeroinitializer, align 8
@clk_ext = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c2443_setparent_hsmmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2443_setparent_hsmmc(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @S3C2443_SCLKCON, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @S3C2443_SCLKCON_HSMMCCLK_EXT, align 8
  %10 = load i64, i64* @S3C2443_SCLKCON_HSMMCCLK_EPLL, align 8
  %11 = or i64 %9, %10
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load %struct.clk*, %struct.clk** %5, align 8
  %16 = icmp eq %struct.clk* %15, @clk_epll
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @S3C2443_SCLKCON_HSMMCCLK_EPLL, align 8
  %19 = load i64, i64* %6, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %6, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.clk*, %struct.clk** %5, align 8
  %23 = icmp eq %struct.clk* %22, @clk_ext
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* @S3C2443_SCLKCON_HSMMCCLK_EXT, align 8
  %26 = load i64, i64* %6, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.clk*, %struct.clk** %4, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @S3C2443_SCLKCON, align 4
  %40 = call i32 @__raw_writel(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.clk*, %struct.clk** %5, align 8
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  store %struct.clk* %42, %struct.clk** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
