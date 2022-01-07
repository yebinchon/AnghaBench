; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.net_device*, i64, i32 }
%struct.net_device = type { i64 }
%struct.rx_ring = type { i32, i32, i32, i32, i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32, %struct.net_device* }
%struct.bq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.iphdr = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No skb available, drop the packet.\0A\00", align 1
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@QL_SELFTEST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_M_MASK = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s Multicast.\0A\00", align 1
@IB_MAC_IOCB_RSP_M_HASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@IB_MAC_IOCB_RSP_M_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Registered\00", align 1
@IB_MAC_IOCB_RSP_M_PROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Promiscuous\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IB_MAC_IOCB_RSP_P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Promiscuous Packet.\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"TCP checksum done!\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_U = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V4 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"UDP checksum done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32)* @ql_process_mac_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_skb(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.bq_desc*, align 8
  %15 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %19 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %20 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %19)
  store %struct.bq_desc* %20, %struct.bq_desc** %14, align 8
  %21 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %22 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @NET_IP_ALIGN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %27, i64 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %36 = load i32, i32* @probe, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 1
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  %40 = call i32 @netif_err(%struct.ql_adapter* %35, i32 %36, %struct.net_device* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %42 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %306

45:                                               ; preds = %5
  %46 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %47 = load i64, i64* @NET_IP_ALIGN, align 8
  %48 = call i32 @skb_reserve(%struct.sk_buff* %46, i64 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @skb_put(%struct.sk_buff* %49, i64 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @memcpy(i32 %51, i64 %54, i64 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %12, align 8
  %58 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %59 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %45
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %66 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %67 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %70 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %65, i32 %68, %struct.rx_ring* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %71)
  br label %306

73:                                               ; preds = %45
  %74 = load i32, i32* @QL_SELFTEST, align 4
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %75, i32 0, i32 3
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call i32 @ql_check_lb_frame(%struct.ql_adapter* %80, %struct.sk_buff* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  br label %306

85:                                               ; preds = %73
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %11, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ETH_HLEN, align 8
  %93 = add nsw i64 %91, %92
  %94 = icmp sgt i64 %88, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %96)
  %98 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %99 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %306

102:                                              ; preds = %85
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @prefetch(i64 %105)
  %107 = load %struct.net_device*, %struct.net_device** %11, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 4
  store %struct.net_device* %107, %struct.net_device** %109, align 8
  %110 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %111 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %102
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %118 = load i32, i32* @rx_status, align 4
  %119 = load i32, i32* @KERN_DEBUG, align 4
  %120 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %120, i32 0, i32 1
  %122 = load %struct.net_device*, %struct.net_device** %121, align 8
  %123 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %124 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @IB_MAC_IOCB_RSP_M_HASH, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %152

131:                                              ; preds = %116
  %132 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %133 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @IB_MAC_IOCB_RSP_M_REG, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %150

140:                                              ; preds = %131
  %141 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %142 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @IB_MAC_IOCB_RSP_M_PROM, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %150

150:                                              ; preds = %140, %139
  %151 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %139 ], [ %149, %140 ]
  br label %152

152:                                              ; preds = %150, %130
  %153 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %130 ], [ %151, %150 ]
  %154 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %117, i32 %118, i32 %119, %struct.net_device* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %152, %102
  %156 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %157 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IB_MAC_IOCB_RSP_P, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %164 = load i32, i32* @rx_status, align 4
  %165 = load i32, i32* @KERN_DEBUG, align 4
  %166 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %167 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %166, i32 0, i32 1
  %168 = load %struct.net_device*, %struct.net_device** %167, align 8
  %169 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %163, i32 %164, i32 %165, %struct.net_device* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %162, %155
  %171 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %172 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %179 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %185 = load %struct.net_device*, %struct.net_device** %11, align 8
  %186 = call i32 @eth_type_trans(%struct.sk_buff* %184, %struct.net_device* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load i64, i64* @CHECKSUM_NONE, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %193 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %263

196:                                              ; preds = %170
  %197 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %198 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %263, label %203

203:                                              ; preds = %196
  %204 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %205 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %203
  %211 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %212 = load i32, i32* @rx_status, align 4
  %213 = load i32, i32* @KERN_DEBUG, align 4
  %214 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %215 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %214, i32 0, i32 1
  %216 = load %struct.net_device*, %struct.net_device** %215, align 8
  %217 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %211, i32 %212, i32 %213, %struct.net_device* %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %218 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  br label %262

221:                                              ; preds = %203
  %222 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %223 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %261

228:                                              ; preds = %221
  %229 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %230 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %261

235:                                              ; preds = %228
  %236 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to %struct.iphdr*
  store %struct.iphdr* %239, %struct.iphdr** %15, align 8
  %240 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %241 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @IP_MF, align 4
  %244 = load i32, i32* @IP_OFFSET, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @htons(i32 %245)
  %247 = and i32 %242, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %235
  %250 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %251 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 1
  store i64 %250, i64* %252, align 8
  %253 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %254 = load i32, i32* @rx_status, align 4
  %255 = load i32, i32* @KERN_DEBUG, align 4
  %256 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %257 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %256, i32 0, i32 1
  %258 = load %struct.net_device*, %struct.net_device** %257, align 8
  %259 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %253, i32 %254, i32 %255, %struct.net_device* %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %260

260:                                              ; preds = %249, %235
  br label %261

261:                                              ; preds = %260, %228, %221
  br label %262

262:                                              ; preds = %261, %210
  br label %263

263:                                              ; preds = %262, %196, %170
  %264 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %265 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %266 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @skb_record_rx_queue(%struct.sk_buff* %264, i32 %267)
  %269 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %263
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 65535
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %279 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %278, i32 0, i32 0
  %280 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %281 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %285 = call i32 @vlan_gro_receive(i32* %279, i32 %282, i32 %283, %struct.sk_buff* %284)
  br label %291

286:                                              ; preds = %274
  %287 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %288 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %287, i32 0, i32 0
  %289 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %290 = call i32 @napi_gro_receive(i32* %288, %struct.sk_buff* %289)
  br label %291

291:                                              ; preds = %286, %277
  br label %306

292:                                              ; preds = %263
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 65535
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %297 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %298 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %296, i32 %299, i32 %300)
  br label %305

302:                                              ; preds = %292
  %303 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %304 = call i32 @netif_receive_skb(%struct.sk_buff* %303)
  br label %305

305:                                              ; preds = %302, %295
  br label %306

306:                                              ; preds = %34, %64, %79, %95, %305, %291
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_check_lb_frame(%struct.ql_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_receive(i32*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
