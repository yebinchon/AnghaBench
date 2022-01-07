; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i64, i32, %struct.TYPE_2__, i32, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*, i64, i32*)* @qlcnic_83xx_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_83xx_process_rcv(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_sds_ring* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.qlcnic_recv_context*, align 8
  %12 = alloca %struct.qlcnic_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_host_sds_ring* %1, %struct.qlcnic_host_sds_ring** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 6
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 5
  %26 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %25, align 8
  store %struct.qlcnic_recv_context* %26, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %19, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %167

36:                                               ; preds = %4
  %37 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %38 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %37, i32 0, i32 0
  %39 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %39, i64 %40
  store %struct.qlcnic_host_rds_ring* %41, %struct.qlcnic_host_rds_ring** %14, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qlcnic_83xx_hndl(i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %48 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %167

55:                                               ; preds = %36
  %56 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %56, i32 0, i32 2
  %58 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %58, i64 %60
  store %struct.qlcnic_rx_buffer* %61, %struct.qlcnic_rx_buffer** %12, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @qlcnic_83xx_pktln(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qlcnic_83xx_csum_status(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %70, %struct.qlcnic_host_rds_ring* %71, i32 %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %13, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %55
  %78 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %78, %struct.qlcnic_rx_buffer** %5, align 8
  br label %167

79:                                               ; preds = %55
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  store i32 0, i32* %20, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @qlcnic_83xx_is_lb_pkt(i32 %94, i32 0)
  store i32 %95, i32* %18, align 4
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %96, %struct.sk_buff* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %91, %84, %79
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %104 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %110 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @skb_put(%struct.sk_buff* %108, i32 %111)
  br label %117

113:                                              ; preds = %101
  %114 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @skb_put(%struct.sk_buff* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %120 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %118, %struct.sk_buff* %119, i32* %19)
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %125 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %130 = call i32 @dev_kfree_skb(%struct.sk_buff* %129)
  %131 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %131, %struct.qlcnic_rx_buffer** %5, align 8
  br label %167

132:                                              ; preds = %117
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = load %struct.net_device*, %struct.net_device** %10, align 8
  %135 = call i32 @eth_type_trans(%struct.sk_buff* %133, %struct.net_device* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 65535
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %142 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %141, i32 0, i32 0
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %148 = call i32 @vlan_gro_receive(i32* %142, i32 %145, i32 %146, %struct.sk_buff* %147)
  br label %154

149:                                              ; preds = %132
  %150 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %151 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %150, i32 0, i32 0
  %152 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %153 = call i32 @napi_gro_receive(i32* %151, %struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %149, %140
  %155 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %166, %struct.qlcnic_rx_buffer** %5, align 8
  br label %167

167:                                              ; preds = %154, %123, %77, %54, %35
  %168 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %168
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_pktln(i32) #1

declare dso_local i32 @qlcnic_83xx_csum_status(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_is_lb_pkt(i32, i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @vlan_gro_receive(i32*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
