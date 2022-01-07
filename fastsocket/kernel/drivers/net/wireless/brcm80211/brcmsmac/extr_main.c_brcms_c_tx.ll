; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.dma_pub** }
%struct.dma_pub = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.d11txh = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@INVALIDFID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Received frame for tx with no space in DMA ring\0A\00", align 1
@TX_BCMC_FIFO = common dso_local global i32 0, align 4
@M_BCMC_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, %struct.sk_buff*)* @brcms_c_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_tx(%struct.brcms_c_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dma_pub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.d11txh*, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* @INVALIDFID, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %14)
  %16 = call i32 @brcms_ac_to_fifo(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.dma_pub**, %struct.dma_pub*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dma_pub*, %struct.dma_pub** %21, i64 %23
  %25 = load %struct.dma_pub*, %struct.dma_pub** %24, align 8
  store %struct.dma_pub* %25, %struct.dma_pub** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.d11txh*
  store %struct.d11txh* %29, %struct.d11txh** %9, align 8
  %30 = load %struct.dma_pub*, %struct.dma_pub** %6, align 8
  %31 = getelementptr inbounds %struct.dma_pub, %struct.dma_pub* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @brcms_warn(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %42 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %46)
  %48 = call i32 @ieee80211_queue_stopped(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %83

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TX_BCMC_FIFO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.d11txh*, %struct.d11txh** %9, align 8
  %61 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le16_to_cpu(i32 %62)
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @INVALIDFID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %70 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* @M_BCMC_FID, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @brcms_b_write_shm(%struct.TYPE_4__* %71, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %64
  %76 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @brcms_c_txfifo(%struct.brcms_c_info* %76, i32 %77, %struct.sk_buff* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @WARN_ON_ONCE(i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %34
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @brcms_ac_to_fifo(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @brcms_warn(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_queue_stopped(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @brcms_c_txfifo(%struct.brcms_c_info*, i32, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
