; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__, i32, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*, i32, i32)* @qlcnic_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_process_rcv(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_sds_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_host_sds_ring* %1, %struct.qlcnic_host_sds_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 6
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %10, align 8
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 5
  %27 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %26, align 8
  store %struct.qlcnic_recv_context* %27, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %20, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %170

37:                                               ; preds = %4
  %38 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %39 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %38, i32 0, i32 0
  %40 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %40, i64 %42
  store %struct.qlcnic_host_rds_ring* %43, %struct.qlcnic_host_rds_ring** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @qlcnic_get_sts_refhandle(i32 %44)
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

54:                                               ; preds = %37
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %170

55:                                               ; preds = %37
  %56 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %56, i32 0, i32 2
  %58 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %58, i64 %60
  store %struct.qlcnic_rx_buffer* %61, %struct.qlcnic_rx_buffer** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @qlcnic_get_sts_totallength(i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @qlcnic_get_sts_status(i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @qlcnic_get_sts_pkt_offset(i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %69 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %68, %struct.qlcnic_host_rds_ring* %69, i32 %70, i32 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %13, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %55
  %76 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %76, %struct.qlcnic_rx_buffer** %5, align 8
  br label %170

77:                                               ; preds = %55
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  store i32 0, i32* %21, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @qlcnic_82xx_is_lb_pkt(i32 %90)
  store i32 %91, i32* %19, align 4
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %21, align 4
  %96 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %92, %struct.sk_buff* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %82, %77
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %100 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %106 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @skb_put(%struct.sk_buff* %104, i32 %107)
  br label %113

109:                                              ; preds = %97
  %110 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @skb_put(%struct.sk_buff* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @skb_pull(%struct.sk_buff* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %123 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %121, %struct.sk_buff* %122, i32* %20)
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = call i32 @dev_kfree_skb(%struct.sk_buff* %132)
  %134 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %134, %struct.qlcnic_rx_buffer** %5, align 8
  br label %170

135:                                              ; preds = %120
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = load %struct.net_device*, %struct.net_device** %10, align 8
  %138 = call i32 @eth_type_trans(%struct.sk_buff* %136, %struct.net_device* %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 65535
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %145 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %144, i32 0, i32 0
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %151 = call i32 @vlan_gro_receive(i32* %145, i32 %148, i32 %149, %struct.sk_buff* %150)
  br label %157

152:                                              ; preds = %135
  %153 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %154 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %153, i32 0, i32 0
  %155 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %156 = call i32 @napi_gro_receive(i32* %154, %struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %152, %143
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %165 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %169, %struct.qlcnic_rx_buffer** %5, align 8
  br label %170

170:                                              ; preds = %157, %126, %75, %54, %36
  %171 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_get_sts_refhandle(i32) #1

declare dso_local i32 @qlcnic_get_sts_totallength(i32) #1

declare dso_local i32 @qlcnic_get_sts_status(i32) #1

declare dso_local i32 @qlcnic_get_sts_pkt_offset(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_82xx_is_lb_pkt(i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

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
