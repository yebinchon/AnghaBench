; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_calc_xmit_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_calc_xmit_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64 }

@dma_base_addr = common dso_local global i64* null, align 8
@CHCR = common dso_local global i64 0, align 8
@ts_shift = common dso_local global i32* null, align 8
@CHCR_TS_MASK = common dso_local global i64 0, align 8
@CHCR_TS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @calc_xmit_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_xmit_shift(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %4 = load i64*, i64** @dma_base_addr, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %4, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @ctrl_inl(i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i32*, i32** @ts_shift, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @CHCR_TS_MASK, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @CHCR_TS_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i64 @ctrl_inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
