; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-pvr2.c_pvr2_request_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-pvr2.c_pvr2_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }

@PVR2_DMA_MODE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PVR2_DMA_LMMODE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @pvr2_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_request_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %3, align 8
  %4 = load i32, i32* @PVR2_DMA_MODE, align 4
  %5 = call i64 @ctrl_inl(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @PVR2_DMA_LMMODE0, align 4
  %12 = call i32 @ctrl_outl(i32 0, i32 %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i64 @ctrl_inl(i32) #1

declare dso_local i32 @ctrl_outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
