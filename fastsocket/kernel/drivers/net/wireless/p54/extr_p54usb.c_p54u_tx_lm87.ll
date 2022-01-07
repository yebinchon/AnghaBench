; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_tx_lm87.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_tx_lm87.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54u_priv* }
%struct.p54u_priv = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.urb = type { i32 }
%struct.lm87_tx_hdr = type { i32, i32 }
%struct.p54_hdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@P54U_PIPE_DATA = common dso_local global i32 0, align 4
@p54u_tx_cb = common dso_local global i32 0, align 4
@p54u_tx_dummy_cb = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @p54u_tx_lm87 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54u_tx_lm87(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54u_priv*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.lm87_tx_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.p54u_priv*, %struct.p54u_priv** %9, align 8
  store %struct.p54u_priv* %10, %struct.p54u_priv** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = getelementptr i8, i8* %14, i64 -8
  %16 = bitcast i8* %15 to %struct.lm87_tx_hdr*
  store %struct.lm87_tx_hdr* %16, %struct.lm87_tx_hdr** %7, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %6, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @p54_free_skb(%struct.ieee80211_hw* %22, %struct.sk_buff* %23)
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @p54u_lm87_chksum(i32* %29, i64 %32)
  %34 = load %struct.lm87_tx_hdr*, %struct.lm87_tx_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.lm87_tx_hdr, %struct.lm87_tx_hdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.p54_hdr*
  %40 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lm87_tx_hdr*, %struct.lm87_tx_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.lm87_tx_hdr, %struct.lm87_tx_hdr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %46 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %49 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @P54U_PIPE_DATA, align 4
  %52 = call i32 @usb_sndbulkpipe(i32 %50, i32 %51)
  %53 = load %struct.lm87_tx_hdr*, %struct.lm87_tx_hdr** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i64 @FREE_AFTER_TX(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %25
  %62 = load i32, i32* @p54u_tx_cb, align 4
  br label %65

63:                                               ; preds = %25
  %64 = load i32, i32* @p54u_tx_dummy_cb, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @usb_fill_bulk_urb(%struct.urb* %44, i32 %47, i32 %52, %struct.lm87_tx_hdr* %53, i64 %57, i32 %66, %struct.sk_buff* %67)
  %69 = load i32, i32* @URB_ZERO_PACKET, align 4
  %70 = load %struct.urb*, %struct.urb** %6, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %76 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %75, i32 0, i32 0
  %77 = call i32 @usb_anchor_urb(%struct.urb* %74, i32* %76)
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i64 @usb_submit_urb(%struct.urb* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = call i32 @usb_unanchor_urb(%struct.urb* %83)
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @p54_free_skb(%struct.ieee80211_hw* %85, %struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %82, %65
  %89 = load %struct.urb*, %struct.urb** %6, align 8
  %90 = call i32 @usb_free_urb(%struct.urb* %89)
  br label %91

91:                                               ; preds = %88, %21
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @p54_free_skb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @p54u_lm87_chksum(i32*, i64) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, %struct.lm87_tx_hdr*, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i64 @FREE_AFTER_TX(%struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
