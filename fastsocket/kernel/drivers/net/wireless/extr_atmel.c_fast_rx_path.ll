; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_fast_rx_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_fast_rx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i32)* @fast_rx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_rx_path(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.atmel_private*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %16 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 24
  %21 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %17, i8* %18, i32 %20, i32 6)
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 6
  store i32 %23, i32* %8, align 4
  %24 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %31 = call i32 @crc32_le(i32 %29, i8* %30, i32 6)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %5
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 14
  %37 = call %struct.sk_buff* @dev_alloc_skb(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %153

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = call i32 @skb_reserve(%struct.sk_buff* %48, i32 2)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 12
  %53 = call i8* @skb_put(%struct.sk_buff* %50, i32 %52)
  store i8* %53, i8** %13, align 8
  %54 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %55 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 12
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 30
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %56, i8* %58, i32 %60, i32 %61)
  %63 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 12
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @crc32_le(i32 %68, i8* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %74 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = bitcast i32* %14 to i8*
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 30
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @atmel_copy_to_host(%struct.TYPE_5__* %75, i8* %76, i32 %80, i32 4)
  %82 = load i32, i32* %10, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %67
  %87 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %88 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = call i32 @dev_kfree_skb(%struct.sk_buff* %94)
  br label %153

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %47
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i8* %98, i32 %101, i32 6)
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %97
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 6
  %113 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i8* %112, i32 %115, i32 6)
  br label %124

117:                                              ; preds = %97
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 6
  %120 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memcpy(i8* %119, i32 %122, i32 6)
  br label %124

124:                                              ; preds = %117, %110
  %125 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %126 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %127 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = call i32 @eth_type_trans(%struct.sk_buff* %125, %struct.TYPE_5__* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @CHECKSUM_NONE, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = call i32 @netif_rx(%struct.sk_buff* %135)
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 12, %137
  %139 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %138
  store i32 %145, i32* %143, align 4
  %146 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %147 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %124, %86, %39
  ret void
}

declare dso_local i32 @atmel_copy_to_host(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
