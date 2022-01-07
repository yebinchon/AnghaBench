; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_start_new_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_start_new_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, i64, i32, %struct.efx_tx_buffer* }
%struct.efx_tx_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tso_state = type { i32, i64, i64, i32, i8*, i32, i32, i32, i32 }
%struct.tcphdr = type { i64, i64, i32 }
%struct.iphdr = type { i8*, i8* }
%struct.ipv6hdr = type { i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*)* @tso_start_new_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tso_start_new_packet(%struct.efx_tx_queue* %0, %struct.sk_buff* %1, %struct.tso_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tso_state*, align 8
  %8 = alloca %struct.efx_tx_buffer*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.ipv6hdr*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tso_state* %2, %struct.tso_state** %7, align 8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 3
  %17 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %16, align 8
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %20, %23
  %25 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %17, i64 %24
  store %struct.efx_tx_buffer* %25, %struct.efx_tx_buffer** %8, align 8
  %26 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %27 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %28 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %29 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @efx_tsoh_get_buffer(%struct.efx_tx_queue* %26, %struct.efx_tx_buffer* %27, i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %171

37:                                               ; preds = %3
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %40 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = bitcast i32* %43 to %struct.tcphdr*
  store %struct.tcphdr* %44, %struct.tcphdr** %9, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %50 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32* %45, i32 %48, i32 %51)
  %53 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %54 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @htonl(i32 %55)
  %57 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %64 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %70 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %37
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %83 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %106

88:                                               ; preds = %37
  %89 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %90 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %93 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %88, %77
  %107 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %108 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %112 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %117 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @ETH_P_IP, align 4
  %120 = call i8* @htons(i32 %119)
  %121 = icmp eq i8* %118, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %106
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %125 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = bitcast i32* %128 to %struct.iphdr*
  store %struct.iphdr* %129, %struct.iphdr** %13, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i8* @htons(i32 %130)
  %132 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %135 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @htons(i32 %136)
  %138 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %141 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %156

144:                                              ; preds = %106
  %145 = load i32*, i32** %11, align 8
  %146 = load %struct.tso_state*, %struct.tso_state** %7, align 8
  %147 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = bitcast i32* %150 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %151, %struct.ipv6hdr** %14, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i8* @htons(i32 %152)
  %154 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %155 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %144, %122
  %157 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %158 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @efx_tso_put_header(%struct.efx_tx_queue* %157, %struct.efx_tx_buffer* %158, i32* %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %171

166:                                              ; preds = %156
  %167 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %168 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %164, %34
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32* @efx_tsoh_get_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @efx_tso_put_header(%struct.efx_tx_queue*, %struct.efx_tx_buffer*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
