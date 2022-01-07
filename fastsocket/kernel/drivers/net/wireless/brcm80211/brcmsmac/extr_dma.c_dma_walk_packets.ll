; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_walk_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_walk_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i64, i64, %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_walk_packets(%struct.dma_pub* %0, void (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dma_pub*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %4, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.dma_pub*, %struct.dma_pub** %4, align 8
  %13 = bitcast %struct.dma_pub* %12 to %struct.dma_info*
  store %struct.dma_info* %13, %struct.dma_info** %7, align 8
  %14 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %15 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %18 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %42, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %26 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %25, i32 0, i32 2
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ieee80211_tx_info*
  store %struct.ieee80211_tx_info* %37, %struct.ieee80211_tx_info** %11, align 8
  %38 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %39 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %40 = bitcast %struct.ieee80211_tx_info* %39 to i8*
  %41 = load i8*, i8** %6, align 8
  call void %38(i8* %40, i8* %41)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @nexttxd(%struct.dma_info* %43, i64 %44)
  store i64 %45, i64* %8, align 8
  br label %20

46:                                               ; preds = %20
  ret void
}

declare dso_local i64 @nexttxd(%struct.dma_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
