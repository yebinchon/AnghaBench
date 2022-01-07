; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_rxreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_rxreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i64, i32 }

@control = common dso_local global i32 0, align 4
@status0 = common dso_local global i32 0, align 4
@D64_RS0_RS_MASK = common dso_local global i32 0, align 4
@D64_RS0_RS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_rxreset(%struct.dma_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_pub*, align 8
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_pub* %0, %struct.dma_pub** %3, align 8
  %6 = load %struct.dma_pub*, %struct.dma_pub** %3, align 8
  %7 = bitcast %struct.dma_pub* %6 to %struct.dma_info*
  store %struct.dma_info* %7, %struct.dma_info** %4, align 8
  %8 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %9 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %15 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %18 = load i32, i32* @control, align 4
  %19 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %17, i32 %18)
  %20 = call i32 @bcma_write32(i32 %16, i32 %19, i32 0)
  %21 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %22 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %25 = load i32, i32* @status0, align 4
  %26 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %24, i32 %25)
  %27 = call i32 @bcma_read32(i32 %23, i32 %26)
  %28 = load i32, i32* @D64_RS0_RS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @D64_RS0_RS_DISABLED, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @SPINWAIT(i32 %32, i32 10000)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @D64_RS0_RS_DISABLED, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @DMA64RXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
