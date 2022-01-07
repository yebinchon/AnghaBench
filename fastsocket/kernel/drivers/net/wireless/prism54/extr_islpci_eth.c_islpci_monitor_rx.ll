; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_eth.c_islpci_monitor_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_eth.c_islpci_monitor_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.rfmon_header = type { i32, i32, i32, i32, i32 }
%struct.avs_80211_1_header = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ARPHRD_IEEE80211_PRISM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@P80211CAPTURE_VERSION = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.sk_buff**)* @islpci_monitor_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @islpci_monitor_rx(%struct.TYPE_9__* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.rfmon_header*, align 8
  %7 = alloca %struct.avs_80211_1_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rfmon_header*
  store %struct.rfmon_header* %17, %struct.rfmon_header** %6, align 8
  %18 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %19 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %148

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ARPHRD_IEEE80211_PRISM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %131

32:                                               ; preds = %24
  %33 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %34 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %38 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %41 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.rfmon_header*, %struct.rfmon_header** %6, align 8
  %45 = getelementptr inbounds %struct.rfmon_header, %struct.rfmon_header* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = call i32 @skb_pull(%struct.sk_buff* %48, i32 20)
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = call i32 @skb_headroom(%struct.sk_buff* %51)
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 112
  br i1 %54, label %55, label %70

55:                                               ; preds = %32
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %57, i32 112, i32 0, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %12, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %67, align 8
  br label %69

68:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %148

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = call i64 @skb_push(%struct.sk_buff* %72, i32 112)
  %74 = inttoptr i64 %73 to %struct.avs_80211_1_header*
  store %struct.avs_80211_1_header* %74, %struct.avs_80211_1_header** %7, align 8
  %75 = load i32, i32* @P80211CAPTURE_VERSION, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %78 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %77, i32 0, i32 13
  store i8* %76, i8** %78, align 8
  %79 = call i8* @cpu_to_be32(i32 112)
  %80 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %81 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %80, i32 0, i32 12
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_be64(i32 %82)
  %84 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %85 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @jiffies, align 4
  %87 = call i8* @cpu_to_be64(i32 %86)
  %88 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %89 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = call i8* @cpu_to_be32(i32 6)
  %91 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %92 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @channel_of_freq(i32 %93)
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %97 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %96, i32 0, i32 8
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %98, 5
  %100 = call i8* @cpu_to_be32(i32 %99)
  %101 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %102 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %101, i32 0, i32 7
  store i8* %100, i8** %102, align 8
  %103 = call i8* @cpu_to_be32(i32 0)
  %104 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %105 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = call i8* @cpu_to_be32(i32 0)
  %107 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %108 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = call i8* @cpu_to_be32(i32 3)
  %110 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %111 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, 127
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %116 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @cpu_to_be32(i32 %121)
  %123 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %124 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = call i8* @cpu_to_be32(i32 0)
  %126 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %127 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = call i8* @cpu_to_be32(i32 0)
  %129 = load %struct.avs_80211_1_header*, %struct.avs_80211_1_header** %7, align 8
  %130 = getelementptr inbounds %struct.avs_80211_1_header, %struct.avs_80211_1_header* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %24
  %132 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %132, align 8
  %134 = call i32 @skb_pull(%struct.sk_buff* %133, i32 20)
  br label %135

135:                                              ; preds = %131, %70
  %136 = load i32, i32* @ETH_P_802_2, align 4
  %137 = call i32 @htons(i32 %136)
  %138 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %141, align 8
  %143 = call i32 @skb_reset_mac_header(%struct.sk_buff* %142)
  %144 = load i32, i32* @PACKET_OTHERHOST, align 4
  %145 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %145, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %135, %68, %23
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @channel_of_freq(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
