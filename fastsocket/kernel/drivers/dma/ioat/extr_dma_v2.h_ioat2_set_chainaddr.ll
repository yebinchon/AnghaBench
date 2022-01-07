; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.h_ioat2_set_chainaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.h_ioat2_set_chainaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat2_dma_chan = type { %struct.ioat_chan_common }
%struct.ioat_chan_common = type { i64 }

@IOAT2_CHAINADDR_OFFSET_LOW = common dso_local global i64 0, align 8
@IOAT2_CHAINADDR_OFFSET_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat2_dma_chan*, i32)* @ioat2_set_chainaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat2_set_chainaddr(%struct.ioat2_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.ioat2_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioat_chan_common*, align 8
  store %struct.ioat2_dma_chan* %0, %struct.ioat2_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %6, i32 0, i32 0
  store %struct.ioat_chan_common* %7, %struct.ioat_chan_common** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %5, align 8
  %10 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IOAT2_CHAINADDR_OFFSET_LOW, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 32
  %17 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %5, align 8
  %18 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IOAT2_CHAINADDR_OFFSET_HIGH, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
