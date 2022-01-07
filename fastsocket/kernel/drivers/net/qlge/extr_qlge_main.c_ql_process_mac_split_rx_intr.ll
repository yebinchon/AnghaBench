; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_split_rx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_split_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i64, %struct.net_device*, i64, i32 }
%struct.net_device = type { i64 }
%struct.rx_ring = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32, %struct.net_device* }
%struct.iphdr = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No skb available, drop packet.\0A\00", align 1
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@QL_SELFTEST = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_M_MASK = common dso_local global i32 0, align 4
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
@IB_MAC_IOCB_RSP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64)* @ql_process_mac_split_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_split_rx_intr(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %15 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %16 = call i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp* %15)
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %19 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %20 = call %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter* %17, %struct.rx_ring* %18, %struct.ib_mac_iocb_rsp* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %29 = load i32, i32* @rx_status, align 4
  %30 = load i32, i32* @KERN_DEBUG, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 1
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %28, i32 %29, i32 %30, %struct.net_device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %316

39:                                               ; preds = %4
  %40 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %41 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %48 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %49 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %52 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %47, i32 %50, %struct.rx_ring* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  br label %316

55:                                               ; preds = %39
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %9, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ETH_HLEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %66)
  %68 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %316

72:                                               ; preds = %55
  %73 = load i32, i32* @QL_SELFTEST, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %74, i32 0, i32 3
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = call i32 @ql_check_lb_frame(%struct.ql_adapter* %79, %struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %82)
  br label %316

84:                                               ; preds = %72
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @prefetch(i64 %87)
  %89 = load %struct.net_device*, %struct.net_device** %9, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 4
  store %struct.net_device* %89, %struct.net_device** %91, align 8
  %92 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %93 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %84
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %100 = load i32, i32* @rx_status, align 4
  %101 = load i32, i32* @KERN_DEBUG, align 4
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 1
  %104 = load %struct.net_device*, %struct.net_device** %103, align 8
  %105 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %106 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @IB_MAC_IOCB_RSP_M_HASH, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %134

113:                                              ; preds = %98
  %114 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %115 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @IB_MAC_IOCB_RSP_M_REG, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %132

122:                                              ; preds = %113
  %123 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %124 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @IB_MAC_IOCB_RSP_M_PROM, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %132

132:                                              ; preds = %122, %121
  %133 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %121 ], [ %131, %122 ]
  br label %134

134:                                              ; preds = %132, %112
  %135 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %112 ], [ %133, %132 ]
  %136 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %99, i32 %100, i32 %101, %struct.net_device* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %135)
  %137 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %138 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %134, %84
  %142 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %143 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IB_MAC_IOCB_RSP_P, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %150 = load i32, i32* @rx_status, align 4
  %151 = load i32, i32* @KERN_DEBUG, align 4
  %152 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %153 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %152, i32 0, i32 1
  %154 = load %struct.net_device*, %struct.net_device** %153, align 8
  %155 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %149, i32 %150, i32 %151, %struct.net_device* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %148, %141
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %158 = load %struct.net_device*, %struct.net_device** %9, align 8
  %159 = call i32 @eth_type_trans(%struct.sk_buff* %157, %struct.net_device* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i64, i64* @CHECKSUM_NONE, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %166 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %236

169:                                              ; preds = %156
  %170 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %171 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %236, label %176

176:                                              ; preds = %169
  %177 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %178 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %185 = load i32, i32* @rx_status, align 4
  %186 = load i32, i32* @KERN_DEBUG, align 4
  %187 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %188 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %187, i32 0, i32 1
  %189 = load %struct.net_device*, %struct.net_device** %188, align 8
  %190 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %184, i32 %185, i32 %186, %struct.net_device* %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %191 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %235

194:                                              ; preds = %176
  %195 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %196 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %234

201:                                              ; preds = %194
  %202 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %203 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to %struct.iphdr*
  store %struct.iphdr* %212, %struct.iphdr** %11, align 8
  %213 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %214 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IP_MF, align 4
  %217 = load i32, i32* @IP_OFFSET, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @htons(i32 %218)
  %220 = and i32 %215, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %208
  %223 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  %226 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %227 = load i32, i32* @rx_status, align 4
  %228 = load i32, i32* @KERN_DEBUG, align 4
  %229 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %230 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %229, i32 0, i32 1
  %231 = load %struct.net_device*, %struct.net_device** %230, align 8
  %232 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %226, i32 %227, i32 %228, %struct.net_device* %231, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %233

233:                                              ; preds = %222, %208
  br label %234

234:                                              ; preds = %233, %201, %194
  br label %235

235:                                              ; preds = %234, %183
  br label %236

236:                                              ; preds = %235, %169, %156
  %237 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %238 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %245 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %243
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %251 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %252 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @skb_record_rx_queue(%struct.sk_buff* %250, i32 %253)
  %255 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %290

260:                                              ; preds = %236
  %261 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %262 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %260
  %266 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %267 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %265
  %273 = load i64, i64* %8, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %272
  %276 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %277 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %276, i32 0, i32 0
  %278 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %279 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %8, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %283 = call i32 @vlan_gro_receive(i32* %277, i64 %280, i64 %281, %struct.sk_buff* %282)
  br label %289

284:                                              ; preds = %272, %265, %260
  %285 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %286 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %285, i32 0, i32 0
  %287 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %288 = call i32 @napi_gro_receive(i32* %286, %struct.sk_buff* %287)
  br label %289

289:                                              ; preds = %284, %275
  br label %316

290:                                              ; preds = %236
  %291 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %292 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %312

295:                                              ; preds = %290
  %296 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %297 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %295
  %303 = load i64, i64* %8, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %307 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %308 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %8, align 8
  %311 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %306, i64 %309, i64 %310)
  br label %315

312:                                              ; preds = %302, %295, %290
  %313 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %314 = call i32 @netif_receive_skb(%struct.sk_buff* %313)
  br label %315

315:                                              ; preds = %312, %305
  br label %316

316:                                              ; preds = %27, %46, %65, %78, %315, %289
  ret void
}

declare dso_local i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp*) #1

declare dso_local %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_check_lb_frame(%struct.ql_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_receive(i32*, i64, i64, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
