; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txreclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txreclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@DMA_RANGE_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@DMA_RANGE_TRANSMITTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"transmitted\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"transferred\00", align 1
@DMA_CTRL_UNFRAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_txreclaim(%struct.dma_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dma_pub*, %struct.dma_pub** %3, align 8
  %8 = bitcast %struct.dma_pub* %7 to %struct.dma_info*
  store %struct.dma_info* %8, %struct.dma_info** %5, align 8
  %9 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %13 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DMA_RANGE_ALL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DMA_RANGE_TRANSMITTED, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %24, %19 ]
  %27 = call i32 @brcms_dbg_dma(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %26)
  %28 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %29 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %32 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %54

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %53, %36
  %38 = load %struct.dma_pub*, %struct.dma_pub** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.sk_buff* @dma_getnexttxp(%struct.dma_pub* %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %44 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_CTRL_UNFRAMED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %51)
  br label %53

53:                                               ; preds = %50, %42
  br label %37

54:                                               ; preds = %35, %37
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32, i8*) #1

declare dso_local %struct.sk_buff* @dma_getnexttxp(%struct.dma_pub*, i32) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
