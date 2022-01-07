; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_rx_buffer = type { i32 }
%struct.netxen_adapter = type { i32, %struct.TYPE_2__, i64, %struct.netxen_recv_context, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.netxen_recv_context = type { %struct.nx_host_rds_ring* }
%struct.nx_host_rds_ring = type { i32, i32, %struct.netxen_rx_buffer* }
%struct.net_device = type { i32 }
%struct.nx_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ethhdr = type { i32 }

@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netxen_rx_buffer* (%struct.netxen_adapter*, %struct.nx_host_sds_ring*, i32, i32)* @netxen_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netxen_rx_buffer* @netxen_process_rcv(%struct.netxen_adapter* %0, %struct.nx_host_sds_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.netxen_rx_buffer*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca %struct.nx_host_sds_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netxen_recv_context*, align 8
  %12 = alloca %struct.netxen_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nx_host_rds_ring*, align 8
  %15 = alloca %struct.ethhdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %6, align 8
  store %struct.nx_host_sds_ring* %1, %struct.nx_host_sds_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 4
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 3
  store %struct.netxen_recv_context* %25, %struct.netxen_recv_context** %11, align 8
  store i32 65535, i32* %20, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %5, align 8
  br label %161

35:                                               ; preds = %4
  %36 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %11, align 8
  %37 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %36, i32 0, i32 0
  %38 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %38, i64 %40
  store %struct.nx_host_rds_ring* %41, %struct.nx_host_rds_ring** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @netxen_get_sts_refhandle(i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %46 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %5, align 8
  br label %161

53:                                               ; preds = %35
  %54 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %55 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %54, i32 0, i32 2
  %56 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %56, i64 %58
  store %struct.netxen_rx_buffer* %59, %struct.netxen_rx_buffer** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @netxen_get_sts_totallength(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @netxen_get_sts_status(i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @netxen_get_sts_pkt_offset(i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %67 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter* %66, %struct.nx_host_rds_ring* %67, i32 %68, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %13, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %53
  %74 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  store %struct.netxen_rx_buffer* %74, %struct.netxen_rx_buffer** %5, align 8
  br label %161

75:                                               ; preds = %53
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %78 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %83 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %84 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @skb_put(%struct.sk_buff* %82, i32 %85)
  br label %91

87:                                               ; preds = %75
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @skb_put(%struct.sk_buff* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @skb_pull(%struct.sk_buff* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = call i32 @__vlan_get_tag(%struct.sk_buff* %104, i32* %20)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %103
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.ethhdr*
  store %struct.ethhdr* %111, %struct.ethhdr** %15, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @VLAN_HLEN, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = mul nsw i32 %119, 2
  %121 = call i32 @memmove(i64 %117, %struct.ethhdr* %118, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %123 = load i32, i32* @VLAN_HLEN, align 4
  %124 = call i32 @skb_pull(%struct.sk_buff* %122, i32 %123)
  br label %125

125:                                              ; preds = %107, %103
  br label %126

126:                                              ; preds = %125, %98
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = load %struct.net_device*, %struct.net_device** %10, align 8
  %129 = call i32 @eth_type_trans(%struct.sk_buff* %127, %struct.net_device* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %20, align 4
  %133 = icmp ne i32 %132, 65535
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %7, align 8
  %136 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %135, i32 0, i32 0
  %137 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = call i32 @vlan_gro_receive(i32* %136, i64 %139, i32 %140, %struct.sk_buff* %141)
  br label %148

143:                                              ; preds = %126
  %144 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %7, align 8
  %145 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %144, i32 0, i32 0
  %146 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %147 = call i32 @napi_gro_receive(i32* %145, %struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %143, %134
  %149 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %154
  store i32 %159, i32* %157, align 4
  %160 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  store %struct.netxen_rx_buffer* %160, %struct.netxen_rx_buffer** %5, align 8
  br label %161

161:                                              ; preds = %148, %73, %52, %34
  %162 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  ret %struct.netxen_rx_buffer* %162
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netxen_get_sts_refhandle(i32) #1

declare dso_local i32 @netxen_get_sts_totallength(i32) #1

declare dso_local i32 @netxen_get_sts_status(i32) #1

declare dso_local i32 @netxen_get_sts_pkt_offset(i32) #1

declare dso_local %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter*, %struct.nx_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i32 @memmove(i64, %struct.ethhdr*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @vlan_gro_receive(i32*, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
