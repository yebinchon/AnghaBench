; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_mk_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_mk_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.efx_channel = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32 }
%struct.efx_rx_buffer = type { i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@EFX_PAGE_SKB_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*, i32)* @efx_rx_mk_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @efx_rx_mk_skb(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.efx_channel*, align 8
  %8 = alloca %struct.efx_rx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_nic*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %7, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.efx_channel*, %struct.efx_channel** %7, align 8
  %15 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %14, i32 0, i32 1
  %16 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  store %struct.efx_nic* %16, %struct.efx_nic** %12, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @EFX_PAGE_SKB_ALIGN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call %struct.sk_buff* @netdev_alloc_skb(i32 %19, i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %137

31:                                               ; preds = %5
  %32 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %33 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @EFX_BUG_ON_PARANOID(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i64, i64* @EFX_PAGE_SKB_ALIGN, align 8
  %41 = call i32 @skb_reserve(%struct.sk_buff* %39, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @__skb_put(%struct.sk_buff* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %61 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %103, %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %71 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %74 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %77 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @skb_fill_page_desc(%struct.sk_buff* %65, i32 %69, i32* %72, i32 %75, i32 %78)
  %80 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %81 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %83 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %90 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %64
  br label %108

103:                                              ; preds = %64
  %104 = load %struct.efx_channel*, %struct.efx_channel** %7, align 8
  %105 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %104, i32 0, i32 0
  %106 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %107 = call %struct.efx_rx_buffer* @efx_rx_buf_next(i32* %105, %struct.efx_rx_buffer* %106)
  store %struct.efx_rx_buffer* %107, %struct.efx_rx_buffer** %8, align 8
  br label %64

108:                                              ; preds = %102
  br label %119

109:                                              ; preds = %31
  %110 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %111 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %114 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__free_pages(i32* %112, i32 %115)
  %117 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %118 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %117, i32 0, i32 2
  store i32* null, i32** %118, align 8
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %109, %108
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %122 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul i32 %120, %123
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %130 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %131 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @eth_type_trans(%struct.sk_buff* %129, i32 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %136, %struct.sk_buff** %6, align 8
  br label %137

137:                                              ; preds = %119, %30
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %138
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(i32*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
