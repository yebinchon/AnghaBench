; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.h_ioat2_xferlen_to_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.h_ioat2_xferlen_to_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat2_dma_chan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat2_dma_chan*, i64)* @ioat2_xferlen_to_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat2_xferlen_to_descs(%struct.ioat2_dma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.ioat2_dma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ioat2_dma_chan* %0, %struct.ioat2_dma_chan** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = lshr i64 %6, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = and i64 %12, %19
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
