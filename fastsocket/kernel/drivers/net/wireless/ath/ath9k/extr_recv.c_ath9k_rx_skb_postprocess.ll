; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_postprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i64 }
%struct.sk_buff = type { i32*, i32 }
%struct.ath_rx_status = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@FCS_LEN = common dso_local global i32 0, align 4
@ATH9K_RXKEYIX_INVALID = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_common*, %struct.sk_buff*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*, i32)* @ath9k_rx_skb_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_rx_skb_postprocess(%struct.ath_common* %0, %struct.sk_buff* %1, %struct.ath_rx_status* %2, %struct.ieee80211_rx_status* %3, i32 %4) #0 {
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath_hw*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %8, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  store %struct.ath_hw* %20, %struct.ath_hw** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @ieee80211_hdrlen(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %5
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @FCS_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = ptrtoint i32* %52 to i32
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @memmove(i32 %53, i32* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @skb_pull(%struct.sk_buff* %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %36, %5
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @ATH9K_RXKEYIX_INVALID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = call i64 @ieee80211_has_protected(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %78 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %120

82:                                               ; preds = %72, %69, %62
  %83 = load i32, i32* %17, align 4
  %84 = call i64 @ieee80211_has_protected(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 4
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 6
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %108 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @test_bit(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %96
  %113 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %96
  br label %119

119:                                              ; preds = %118, %89, %86, %82
  br label %120

120:                                              ; preds = %119, %76
  %121 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  %122 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load i32, i32* %17, align 4
  %134 = call i64 @ieee80211_is_mgmt(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %132, %125, %120
  ret void
}

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
