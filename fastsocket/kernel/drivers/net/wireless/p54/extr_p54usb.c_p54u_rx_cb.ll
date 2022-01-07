; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_rx_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.p54u_rx_info = type { %struct.ieee80211_hw*, %struct.urb* }
%struct.ieee80211_hw = type { %struct.p54u_priv* }
%struct.p54u_priv = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@P54U_NET2280 = common dso_local global i64 0, align 8
@FW_LM87 = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @p54u_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54u_rx_cb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.p54u_rx_info*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.p54u_priv*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.p54u_rx_info*
  store %struct.p54u_rx_info* %13, %struct.p54u_rx_info** %4, align 8
  %14 = load %struct.p54u_rx_info*, %struct.p54u_rx_info** %4, align 8
  %15 = getelementptr inbounds %struct.p54u_rx_info, %struct.p54u_rx_info* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.p54u_priv*, %struct.p54u_priv** %18, align 8
  store %struct.p54u_priv* %19, %struct.p54u_priv** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %22 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %21, i32 0, i32 1
  %23 = call i32 @skb_unlink(%struct.sk_buff* %20, i32* %22)
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %30)
  br label %155

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @skb_put(%struct.sk_buff* %33, i32 %36)
  %38 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %39 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @P54U_NET2280, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %46 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @skb_pull(%struct.sk_buff* %44, i32 %48)
  br label %50

50:                                               ; preds = %43, %32
  %51 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %52 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FW_LM87, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @skb_pull(%struct.sk_buff* %58, i32 4)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @skb_put(%struct.sk_buff* %60, i32 4)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i64 @p54_rx(%struct.ieee80211_hw* %63, %struct.sk_buff* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %69 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 32
  %73 = call %struct.sk_buff* @dev_alloc_skb(i64 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %155

81:                                               ; preds = %67
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.p54u_rx_info*
  store %struct.p54u_rx_info* %85, %struct.p54u_rx_info** %4, align 8
  %86 = load %struct.urb*, %struct.urb** %2, align 8
  %87 = load %struct.p54u_rx_info*, %struct.p54u_rx_info** %4, align 8
  %88 = getelementptr inbounds %struct.p54u_rx_info, %struct.p54u_rx_info* %87, i32 0, i32 1
  store %struct.urb* %86, %struct.urb** %88, align 8
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %90 = load %struct.p54u_rx_info*, %struct.p54u_rx_info** %4, align 8
  %91 = getelementptr inbounds %struct.p54u_rx_info, %struct.p54u_rx_info* %90, i32 0, i32 0
  store %struct.ieee80211_hw* %89, %struct.ieee80211_hw** %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = call i8* @skb_tail_pointer(%struct.sk_buff* %92)
  %94 = load %struct.urb*, %struct.urb** %2, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = load %struct.urb*, %struct.urb** %2, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 3
  store %struct.sk_buff* %96, %struct.sk_buff** %98, align 8
  br label %133

99:                                               ; preds = %62
  %100 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %101 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @P54U_NET2280, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %108 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @skb_push(%struct.sk_buff* %106, i32 %110)
  br label %112

112:                                              ; preds = %105, %99
  %113 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %114 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @FW_LM87, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call i32 @skb_push(%struct.sk_buff* %120, i32 4)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = call i32 @skb_put(%struct.sk_buff* %122, i32 4)
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = call i32 @skb_trim(%struct.sk_buff* %127, i32 0)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %130 = call i8* @skb_tail_pointer(%struct.sk_buff* %129)
  %131 = load %struct.urb*, %struct.urb** %2, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %124, %81
  %134 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %135 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %134, i32 0, i32 1
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = call i32 @skb_queue_tail(i32* %135, %struct.sk_buff* %136)
  %138 = load %struct.urb*, %struct.urb** %2, align 8
  %139 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %140 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %139, i32 0, i32 2
  %141 = call i32 @usb_anchor_urb(%struct.urb* %138, i32* %140)
  %142 = load %struct.urb*, %struct.urb** %2, align 8
  %143 = load i32, i32* @GFP_ATOMIC, align 4
  %144 = call i64 @usb_submit_urb(%struct.urb* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %133
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %149 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %148, i32 0, i32 1
  %150 = call i32 @skb_unlink(%struct.sk_buff* %147, i32* %149)
  %151 = load %struct.urb*, %struct.urb** %2, align 8
  %152 = call i32 @usb_unanchor_urb(%struct.urb* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %29, %80, %146, %133
  ret void
}

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @p54_rx(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
