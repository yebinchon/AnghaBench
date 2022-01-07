; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_80211_rx.c_prism2_frag_cache_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_80211_rx.c_prism2_frag_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.prism2_frag_entry*, %struct.TYPE_5__* }
%struct.prism2_frag_entry = type { i32, i32, %struct.sk_buff*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_hdr = type { i32, i32, i32 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@PRISM2_FRAG_CACHE_LEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.TYPE_6__*, %struct.ieee80211_hdr*)* @prism2_frag_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @prism2_frag_cache_get(%struct.TYPE_6__* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.prism2_frag_entry*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %11 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 12
  %31 = add i64 %30, 8
  %32 = add i64 %31, 2
  %33 = add i64 %32, 8
  %34 = load i64, i64* @ETH_ALEN, align 8
  %35 = add i64 %33, %34
  %36 = call %struct.sk_buff* @dev_alloc_skb(i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = icmp eq %struct.sk_buff* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %122

40:                                               ; preds = %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %43, i64 %46
  store %struct.prism2_frag_entry* %47, %struct.prism2_frag_entry** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PRISM2_FRAG_CACHE_LEN, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %40
  %61 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %62 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %61, i32 0, i32 2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %67 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %66, i32 0, i32 2
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @jiffies, align 4
  %72 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %73 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %76 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %79 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %82 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %81, i32 0, i32 2
  store %struct.sk_buff* %80, %struct.sk_buff** %82, align 8
  %83 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %84 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* @ETH_ALEN, align 8
  %90 = call i32 @memcpy(i32 %85, i32 %88, i64 %89)
  %91 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %92 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @ETH_ALEN, align 8
  %98 = call i32 @memcpy(i32 %93, i32 %96, i64 %97)
  br label %120

99:                                               ; preds = %2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.prism2_frag_entry* @prism2_frag_cache_find(%struct.TYPE_6__* %100, i32 %101, i32 %102, i32 %105, i32 %108)
  store %struct.prism2_frag_entry* %109, %struct.prism2_frag_entry** %10, align 8
  %110 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %111 = icmp ne %struct.prism2_frag_entry* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %115 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.prism2_frag_entry*, %struct.prism2_frag_entry** %10, align 8
  %117 = getelementptr inbounds %struct.prism2_frag_entry, %struct.prism2_frag_entry* %116, i32 0, i32 2
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %6, align 8
  br label %119

119:                                              ; preds = %112, %99
  br label %120

120:                                              ; preds = %119, %70
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %3, align 8
  br label %122

122:                                              ; preds = %120, %39
  %123 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %123
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local %struct.prism2_frag_entry* @prism2_frag_cache_find(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
