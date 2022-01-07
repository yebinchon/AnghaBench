; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_tx_net2280.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_tx_net2280.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, i64, %struct.p54u_priv* }
%struct.p54u_priv = type { i32, i32 }
%struct.sk_buff = type { i32, i64, %struct.p54u_priv* }
%struct.urb = type { i32 }
%struct.net2280_tx_hdr = type { i32, i8*, i8*, i8*, i8* }
%struct.net2280_reg_write = type { i32, i8*, i8*, i8*, i8* }
%struct.p54_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET2280_DEV_U32 = common dso_local global i32 0, align 4
@P54U_DEV_BASE = common dso_local global i32 0, align 4
@ISL38XX_DEV_INT_DATA = common dso_local global i32 0, align 4
@P54U_PIPE_DEV = common dso_local global i32 0, align 4
@p54u_tx_dummy_cb = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@P54U_PIPE_DATA = common dso_local global i32 0, align 4
@p54u_tx_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @p54u_tx_net2280 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54u_tx_net2280(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54u_priv*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.net2280_tx_hdr*, align 8
  %9 = alloca %struct.net2280_reg_write*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 2
  %13 = load %struct.p54u_priv*, %struct.p54u_priv** %12, align 8
  store %struct.p54u_priv* %13, %struct.p54u_priv** %5, align 8
  store %struct.urb* null, %struct.urb** %6, align 8
  store %struct.urb* null, %struct.urb** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr i8, i8* %17, i64 -40
  %19 = bitcast i8* %18 to %struct.net2280_tx_hdr*
  store %struct.net2280_tx_hdr* %19, %struct.net2280_tx_hdr** %8, align 8
  store %struct.net2280_reg_write* null, %struct.net2280_reg_write** %9, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.net2280_tx_hdr* @kmalloc(i32 40, i32 %22)
  %24 = bitcast %struct.net2280_tx_hdr* %23 to %struct.net2280_reg_write*
  store %struct.net2280_reg_write* %24, %struct.net2280_reg_write** %9, align 8
  %25 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %26 = icmp ne %struct.net2280_reg_write* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %149

28:                                               ; preds = %2
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %29)
  store %struct.urb* %30, %struct.urb** %6, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %149

34:                                               ; preds = %28
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %35)
  store %struct.urb* %36, %struct.urb** %7, align 8
  %37 = load %struct.urb*, %struct.urb** %7, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %149

40:                                               ; preds = %34
  %41 = load i32, i32* @NET2280_DEV_U32, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %44 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @P54U_DEV_BASE, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %48 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @ISL38XX_DEV_INT_DATA, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %52 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.net2280_tx_hdr*, %struct.net2280_tx_hdr** %8, align 8
  %54 = call i32 @memset(%struct.net2280_tx_hdr* %53, i32 0, i32 40)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.net2280_tx_hdr*, %struct.net2280_tx_hdr** %8, align 8
  %60 = getelementptr inbounds %struct.net2280_tx_hdr, %struct.net2280_tx_hdr* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.p54_hdr*
  %65 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net2280_tx_hdr*, %struct.net2280_tx_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.net2280_tx_hdr, %struct.net2280_tx_hdr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %71 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %74 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @P54U_PIPE_DEV, align 4
  %77 = call i32 @usb_sndbulkpipe(i32 %75, i32 %76)
  %78 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %79 = bitcast %struct.net2280_reg_write* %78 to %struct.net2280_tx_hdr*
  %80 = load i32, i32* @p54u_tx_dummy_cb, align 4
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = bitcast %struct.ieee80211_hw* %81 to %struct.sk_buff*
  %83 = call i32 @usb_fill_bulk_urb(%struct.urb* %69, i32 %72, i32 %77, %struct.net2280_tx_hdr* %79, i32 40, i32 %80, %struct.sk_buff* %82)
  %84 = load i32, i32* @URB_FREE_BUFFER, align 4
  %85 = load i32, i32* @URB_ZERO_PACKET, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  store %struct.net2280_reg_write* null, %struct.net2280_reg_write** %9, align 8
  %91 = load %struct.urb*, %struct.urb** %7, align 8
  %92 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %93 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %96 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @P54U_PIPE_DATA, align 4
  %99 = call i32 @usb_sndbulkpipe(i32 %97, i32 %98)
  %100 = load %struct.net2280_tx_hdr*, %struct.net2280_tx_hdr** %8, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 40
  %106 = trunc i64 %105 to i32
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i64 @FREE_AFTER_TX(%struct.sk_buff* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %40
  %111 = load i32, i32* @p54u_tx_cb, align 4
  br label %114

112:                                              ; preds = %40
  %113 = load i32, i32* @p54u_tx_dummy_cb, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @usb_fill_bulk_urb(%struct.urb* %91, i32 %94, i32 %99, %struct.net2280_tx_hdr* %100, i32 %106, i32 %115, %struct.sk_buff* %116)
  %118 = load i32, i32* @URB_ZERO_PACKET, align 4
  %119 = load %struct.urb*, %struct.urb** %7, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.urb*, %struct.urb** %6, align 8
  %124 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %125 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %124, i32 0, i32 0
  %126 = call i32 @usb_anchor_urb(%struct.urb* %123, i32* %125)
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = load i32, i32* @GFP_ATOMIC, align 4
  %129 = call i32 @usb_submit_urb(%struct.urb* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %114
  %133 = load %struct.urb*, %struct.urb** %6, align 8
  %134 = call i32 @usb_unanchor_urb(%struct.urb* %133)
  br label %149

135:                                              ; preds = %114
  %136 = load %struct.urb*, %struct.urb** %7, align 8
  %137 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %138 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %137, i32 0, i32 0
  %139 = call i32 @usb_anchor_urb(%struct.urb* %136, i32* %138)
  %140 = load %struct.urb*, %struct.urb** %7, align 8
  %141 = load i32, i32* @GFP_ATOMIC, align 4
  %142 = call i32 @usb_submit_urb(%struct.urb* %140, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load %struct.urb*, %struct.urb** %7, align 8
  %147 = call i32 @usb_unanchor_urb(%struct.urb* %146)
  br label %149

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %145, %132, %39, %33, %27
  %150 = load %struct.urb*, %struct.urb** %6, align 8
  %151 = call i32 @usb_free_urb(%struct.urb* %150)
  %152 = load %struct.urb*, %struct.urb** %7, align 8
  %153 = call i32 @usb_free_urb(%struct.urb* %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %9, align 8
  %158 = bitcast %struct.net2280_reg_write* %157 to %struct.net2280_tx_hdr*
  %159 = call i32 @kfree(%struct.net2280_tx_hdr* %158)
  %160 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %161 = bitcast %struct.ieee80211_hw* %160 to %struct.sk_buff*
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = call i32 @p54_free_skb(%struct.sk_buff* %161, %struct.sk_buff* %162)
  br label %164

164:                                              ; preds = %156, %149
  ret void
}

declare dso_local %struct.net2280_tx_hdr* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.net2280_tx_hdr*, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, %struct.net2280_tx_hdr*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i64 @FREE_AFTER_TX(%struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.net2280_tx_hdr*) #1

declare dso_local i32 @p54_free_skb(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
