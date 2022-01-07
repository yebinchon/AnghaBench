; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.b43legacy_dmaring = type { i32, i32, i32 }

@B43legacy_DBG_DMAVERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Packet after queue stopped\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@SLOTS_PER_PACKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA queue overflow\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DMA tx mapping failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Stopped TX ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_dma_tx(%struct.b43legacy_wldev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.b43legacy_dmaring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %10)
  %12 = call %struct.b43legacy_dmaring* @priority_to_txring(%struct.b43legacy_wldev* %9, i32 %11)
  store %struct.b43legacy_dmaring* %12, %struct.b43legacy_dmaring** %6, align 8
  %13 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %14 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @B43legacy_WARN_ON(i32 %18)
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %27 = load i32, i32* @B43legacy_DBG_DMAVERBOSE, align 4
  %28 = call i64 @b43legacy_debug(%struct.b43legacy_wldev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %32 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @b43legacyerr(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %121

38:                                               ; preds = %2
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %40 = call i64 @free_slots(%struct.b43legacy_dmaring* %39)
  %41 = load i64, i64* @SLOTS_PER_PACKET, align 8
  %42 = icmp slt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %49 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @b43legacyerr(%struct.TYPE_3__* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %121

54:                                               ; preds = %38
  %55 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %56 = call i32 @dma_tx_fragment(%struct.b43legacy_dmaring* %55, %struct.sk_buff** %5)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ENOKEY, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %65)
  store i32 0, i32* %3, align 4
  br label %121

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %73 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = call i32 @b43legacyerr(%struct.TYPE_3__* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %121

77:                                               ; preds = %67
  %78 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %79 = call i64 @free_slots(%struct.b43legacy_dmaring* %78)
  %80 = load i64, i64* @SLOTS_PER_PACKET, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %84 = call i64 @should_inject_overflow(%struct.b43legacy_dmaring* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %82, %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %90 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ieee80211_stop_queue(i32 %93, i32 %94)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %97 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 1, i32* %103, align 4
  %104 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %105 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %107 = load i32, i32* @B43legacy_DBG_DMAVERBOSE, align 4
  %108 = call i64 @b43legacy_debug(%struct.b43legacy_wldev* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %86
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %112 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %115 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @b43legacydbg(%struct.TYPE_3__* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %110, %86
  br label %119

119:                                              ; preds = %118, %82
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %71, %64, %47, %35
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.b43legacy_dmaring* @priority_to_txring(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43legacy_debug(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @free_slots(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @dma_tx_fragment(%struct.b43legacy_dmaring*, %struct.sk_buff**) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @should_inject_overflow(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @b43legacydbg(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
