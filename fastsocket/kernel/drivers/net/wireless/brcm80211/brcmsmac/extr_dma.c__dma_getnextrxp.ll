; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_getnextrxp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_getnextrxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dma_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dma_info*, i32)* @_dma_getnextrxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @_dma_getnextrxp(%struct.dma_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %7 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.sk_buff* @dma64_getnextrxp(%struct.dma_info* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %3, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %16
}

declare dso_local %struct.sk_buff* @dma64_getnextrxp(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
