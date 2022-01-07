; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_packet_gro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_packet_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.TYPE_6__, %struct.efx_nic*, %struct.napi_struct }
%struct.TYPE_6__ = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.efx_rx_buffer = type { i32, i32, i32*, i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@GRO_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*)* @efx_rx_packet_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_rx_packet_gro(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.efx_channel*, align 8
  %6 = alloca %struct.efx_rx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.napi_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.efx_nic*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %5, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 3
  store %struct.napi_struct* %14, %struct.napi_struct** %9, align 8
  %15 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %16 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %15, i32 0, i32 2
  %17 = load %struct.efx_nic*, %struct.efx_nic** %16, align 8
  store %struct.efx_nic* %17, %struct.efx_nic** %11, align 8
  %18 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %19 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %12, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @put_page(i32* %34)
  %36 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %39 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %38, i32 0, i32 1
  %40 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %41 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.TYPE_6__* %39, %struct.efx_rx_buffer* %40)
  store %struct.efx_rx_buffer* %41, %struct.efx_rx_buffer** %6, align 8
  br label %27

42:                                               ; preds = %27
  br label %140

43:                                               ; preds = %4
  %44 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NETIF_F_RXHASH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @efx_rx_buf_hash(i32* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %43
  %58 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @CHECKSUM_NONE, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %104, %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @skb_fill_page_desc(%struct.sk_buff* %73, i32 %77, i32* %80, i32 %83, i32 %86)
  %88 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %91 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %72
  br label %109

104:                                              ; preds = %72
  %105 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %106 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %105, i32 0, i32 1
  %107 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %108 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.TYPE_6__* %106, %struct.efx_rx_buffer* %107)
  store %struct.efx_rx_buffer* %108, %struct.efx_rx_buffer** %6, align 8
  br label %72

109:                                              ; preds = %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %117 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul i32 %115, %118
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %126 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @skb_record_rx_queue(%struct.sk_buff* %124, i32 %128)
  %130 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %131 = call i64 @napi_gro_frags_gr(%struct.napi_struct* %130)
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @GRO_DROP, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %109
  %136 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %137 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %42, %135, %109
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.TYPE_6__*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @efx_rx_buf_hash(i32*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i64 @napi_gro_frags_gr(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
