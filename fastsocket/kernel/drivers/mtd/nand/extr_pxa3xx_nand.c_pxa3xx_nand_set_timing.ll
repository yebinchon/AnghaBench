; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_set_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32 }
%struct.pxa3xx_nand_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NDTR0CS0 = common dso_local global i32 0, align 4
@NDTR1CS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_timing*)* @pxa3xx_nand_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa3xx_nand_set_timing(%struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_timing* %1) #0 {
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
  %12 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %13 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @ns2cycle(i32 %14, i64 %15)
  %17 = call i32 @NDTR0_tCH(i32 %16)
  %18 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ns2cycle(i32 %20, i64 %21)
  %23 = call i32 @NDTR0_tCS(i32 %22)
  %24 = or i32 %17, %23
  %25 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %26 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ns2cycle(i32 %27, i64 %28)
  %30 = call i32 @NDTR0_tWH(i32 %29)
  %31 = or i32 %24, %30
  %32 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %33 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ns2cycle(i32 %34, i64 %35)
  %37 = call i32 @NDTR0_tWP(i32 %36)
  %38 = or i32 %31, %37
  %39 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %40 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ns2cycle(i32 %41, i64 %42)
  %44 = call i32 @NDTR0_tRH(i32 %43)
  %45 = or i32 %38, %44
  %46 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %47 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @ns2cycle(i32 %48, i64 %49)
  %51 = call i32 @NDTR0_tRP(i32 %50)
  %52 = or i32 %45, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @ns2cycle(i32 %55, i64 %56)
  %58 = call i32 @NDTR1_tR(i32 %57)
  %59 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %60 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @ns2cycle(i32 %61, i64 %62)
  %64 = call i32 @NDTR1_tWHR(i32 %63)
  %65 = or i32 %58, %64
  %66 = load %struct.pxa3xx_nand_timing*, %struct.pxa3xx_nand_timing** %4, align 8
  %67 = getelementptr inbounds %struct.pxa3xx_nand_timing, %struct.pxa3xx_nand_timing* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ns2cycle(i32 %68, i64 %69)
  %71 = call i32 @NDTR1_tAR(i32 %70)
  %72 = or i32 %65, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %74 = load i32, i32* @NDTR0CS0, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @nand_writel(%struct.pxa3xx_nand_info* %73, i32 %74, i32 %75)
  %77 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %78 = load i32, i32* @NDTR1CS0, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nand_writel(%struct.pxa3xx_nand_info* %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @NDTR0_tCH(i32) #1

declare dso_local i32 @ns2cycle(i32, i64) #1

declare dso_local i32 @NDTR0_tCS(i32) #1

declare dso_local i32 @NDTR0_tWH(i32) #1

declare dso_local i32 @NDTR0_tWP(i32) #1

declare dso_local i32 @NDTR0_tRH(i32) #1

declare dso_local i32 @NDTR0_tRP(i32) #1

declare dso_local i32 @NDTR1_tR(i32) #1

declare dso_local i32 @NDTR1_tWHR(i32) #1

declare dso_local i32 @NDTR1_tAR(i32) #1

declare dso_local i32 @nand_writel(%struct.pxa3xx_nand_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
