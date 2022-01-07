; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_get_dma_residue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_get_dma_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64 }

@dma_base_addr = common dso_local global i64* null, align 8
@CHCR = common dso_local global i64 0, align 8
@CHCR_DE = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @sh_dmac_get_dma_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmac_get_dma_residue(%struct.dma_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %3, align 8
  %4 = load i64*, i64** @dma_base_addr, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %4, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ctrl_inl(i64 %11)
  %13 = load i32, i32* @CHCR_DE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i64*, i64** @dma_base_addr, align 8
  %19 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @ctrl_inl(i64 %25)
  %27 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %28 = call i32 @calc_xmit_shift(%struct.dma_channel* %27)
  %29 = shl i32 %26, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @calc_xmit_shift(%struct.dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
