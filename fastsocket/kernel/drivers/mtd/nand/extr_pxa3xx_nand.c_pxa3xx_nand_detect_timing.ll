; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32 }
%struct.pxa3xx_nand_timing = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@NDTR0CS0 = common dso_local global i32 0, align 4
@NDTR1CS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_timing*)* @pxa3xx_nand_detect_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa3xx_nand_detect_timing(%struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_timing* %1) #0 {
  %3 = alloca %struct.pxa3xx_nand_info*, align 8
  %4 = alloca %struct.pxa3xx_nand_timing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %3, align 8
  store %struct.pxa3xx_nand_timing* %1, %struct.pxa3xx_nand_timing** %4, align 8
  %8 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %9 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @clk_get_rate(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %13 = load i32, i32* @NDTR0CS0, align 4
  %14 = call i32 @nand_readl(%struct.pxa3xx_nand_info* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %16 = load i32, i32* @NDTR1CS0, align 4
  %17 = call i32 @nand_readl(%struct.pxa3xx_nand_info* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tCH_NDTR0(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @cycle2ns(i32 %19, i64 %20)
  %22 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @tCS_NDTR0(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @cycle2ns(i32 %25, i64 %26)
  %28 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %29 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @tWH_NDTR0(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @cycle2ns(i32 %31, i64 %32)
  %34 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %35 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @tWP_NDTR0(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = call i8* @cycle2ns(i32 %37, i64 %38)
  %40 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @tRH_NDTR0(i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @cycle2ns(i32 %43, i64 %44)
  %46 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %47 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @tRP_NDTR0(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i8* @cycle2ns(i32 %49, i64 %50)
  %52 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %53 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @tR_NDTR1(i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = call i8* @cycle2ns(i32 %55, i64 %56)
  %58 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %59 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @tWHR_NDTR1(i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = call i8* @cycle2ns(i32 %61, i64 %62)
  %64 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %65 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @tAR_NDTR1(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @cycle2ns(i32 %67, i64 %68)
  %70 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %71 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @nand_readl(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i8* @cycle2ns(i32, i64) #1

declare dso_local i32 @tCH_NDTR0(i32) #1

declare dso_local i32 @tCS_NDTR0(i32) #1

declare dso_local i32 @tWH_NDTR0(i32) #1

declare dso_local i32 @tWP_NDTR0(i32) #1

declare dso_local i32 @tRH_NDTR0(i32) #1

declare dso_local i32 @tRP_NDTR0(i32) #1

declare dso_local i32 @tR_NDTR1(i32) #1

declare dso_local i32 @tWHR_NDTR1(i32) #1

declare dso_local i32 @tAR_NDTR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
