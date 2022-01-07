; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111 = type { i32, i64, i32 }

@SA1111_SKCR = common dso_local global i64 0, align 8
@SKCR_VCO_OFF = common dso_local global i64 0, align 8
@SKCR_PLL_BYPASS = common dso_local global i64 0, align 8
@SKCR_OE_EN = common dso_local global i64 0, align 8
@SKCR_RCLKEN = common dso_local global i64 0, align 8
@SKCR_RDYEN = common dso_local global i64 0, align 8
@SA1111_SKPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1111*)* @sa1111_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1111_wake(%struct.sa1111* %0) #0 {
  %2 = alloca %struct.sa1111*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sa1111* %0, %struct.sa1111** %2, align 8
  %5 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %6 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %10 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %14 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SA1111_SKCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @sa1111_readl(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @SKCR_VCO_OFF, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %25 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SA1111_SKCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @sa1111_writel(i64 %23, i64 %28)
  %30 = load i64, i64* @SKCR_PLL_BYPASS, align 8
  %31 = load i64, i64* @SKCR_OE_EN, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %37 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SA1111_SKCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @sa1111_writel(i64 %35, i64 %40)
  %42 = call i32 @udelay(i32 100)
  %43 = load i64, i64* @SKCR_RCLKEN, align 8
  %44 = load i64, i64* @SKCR_RDYEN, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* %4, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %50 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SA1111_SKCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @sa1111_writel(i64 %48, i64 %53)
  %55 = call i32 @udelay(i32 1)
  %56 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %57 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SA1111_SKPCR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @sa1111_writel(i64 0, i64 %60)
  %62 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %63 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %62, i32 0, i32 0
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @sa1111_readl(i64) #1

declare dso_local i32 @sa1111_writel(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
