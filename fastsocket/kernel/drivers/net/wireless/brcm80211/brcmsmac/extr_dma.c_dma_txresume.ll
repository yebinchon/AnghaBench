; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txresume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@control = common dso_local global i32 0, align 4
@D64_XC_SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_txresume(%struct.dma_pub* %0) #0 {
  %2 = alloca %struct.dma_pub*, align 8
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %2, align 8
  %4 = load %struct.dma_pub*, %struct.dma_pub** %2, align 8
  %5 = bitcast %struct.dma_pub* %4 to %struct.dma_info*
  store %struct.dma_info* %5, %struct.dma_info** %3, align 8
  %6 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %7 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @brcms_dbg_dma(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %14 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %20 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %23 = load i32, i32* @control, align 4
  %24 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %22, i32 %23)
  %25 = load i32, i32* @D64_XC_SE, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 @bcma_mask32(i32 %21, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @bcma_mask32(i32, i32, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
