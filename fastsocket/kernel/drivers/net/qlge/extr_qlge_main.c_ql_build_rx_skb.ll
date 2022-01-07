; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_build_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_build_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, i32 }

@IB_MAC_IOCB_RSP_HV = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_HS = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Header of %d bytes in small buffer.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No Data buffer in this packet.\0A\00", align 1
@IB_MAC_IOCB_RSP_DS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Headers in small, data of %d bytes in small, combine them.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d bytes in a single small buffer.\0A\00", align 1
@IB_MAC_IOCB_RSP_DL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Header in small, %d bytes in large. Chain large to small!\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Chaining page at offset = %d, for %d bytes  to skb.\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"No skb available, drop the packet.\0A\00", align 1
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [77 x i8] c"%d bytes of headers and data in large. Chain page to new skb and pull tail.\0A\00", align 1
@IB_MAC_IOCB_RSP_V = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"%d bytes of headers & data in chain of large.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Adding page %d to skb for %d bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*)* @ql_build_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %8 = alloca %struct.bq_desc*, align 8
  %9 = alloca %struct.bq_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %15 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %16 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %20 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %24 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IB_MAC_IOCB_RSP_HV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %3
  %30 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %31 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %29
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %38 = load i32, i32* @rx_status, align 4
  %39 = load i32, i32* @KERN_DEBUG, align 4
  %40 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %37, i32 %38, i32 %39, i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %46 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %45)
  store %struct.bq_desc* %46, %struct.bq_desc** %9, align 8
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %51 = load i32, i32* @mapaddr, align 4
  %52 = call i32 @pci_unmap_addr(%struct.bq_desc* %50, i32 %51)
  %53 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %54 = load i32, i32* @maplen, align 4
  %55 = call i32 @pci_unmap_len(%struct.bq_desc* %53, i32 %54)
  %56 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %57 = call i32 @pci_unmap_single(i32 %49, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %59 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %60, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ql_realign_skb(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @skb_put(%struct.sk_buff* %65, i32 %66)
  %68 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %69 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %70, align 8
  br label %71

71:                                               ; preds = %36, %29, %3
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %80 = load i32, i32* @rx_status, align 4
  %81 = load i32, i32* @KERN_DEBUG, align 4
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %79, i32 %80, i32 %81, i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  br label %457

87:                                               ; preds = %71
  %88 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %89 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IB_MAC_IOCB_RSP_DS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %181

94:                                               ; preds = %87
  %95 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %96 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %94
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %103 = load i32, i32* @rx_status, align 4
  %104 = load i32, i32* @KERN_DEBUG, align 4
  %105 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %106 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %102, i32 %103, i32 %104, i32 %107, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %111 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %110)
  store %struct.bq_desc* %111, %struct.bq_desc** %9, align 8
  %112 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %116 = load i32, i32* @mapaddr, align 4
  %117 = call i32 @pci_unmap_addr(%struct.bq_desc* %115, i32 %116)
  %118 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %119 = load i32, i32* @maplen, align 4
  %120 = call i32 @pci_unmap_len(%struct.bq_desc* %118, i32 %119)
  %121 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %122 = call i32 @pci_dma_sync_single_for_cpu(i32 %114, i32 %117, i32 %120, i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @skb_put(%struct.sk_buff* %123, i32 %124)
  %126 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %127 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %struct.sk_buff*, %struct.sk_buff** %128, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @memcpy(i32 %125, i32 %131, i32 %132)
  %134 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %138 = load i32, i32* @mapaddr, align 4
  %139 = call i32 @pci_unmap_addr(%struct.bq_desc* %137, i32 %138)
  %140 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %141 = load i32, i32* @maplen, align 4
  %142 = call i32 @pci_unmap_len(%struct.bq_desc* %140, i32 %141)
  %143 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %144 = call i32 @pci_dma_sync_single_for_device(i32 %136, i32 %139, i32 %142, i32 %143)
  br label %180

145:                                              ; preds = %94
  %146 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %147 = load i32, i32* @rx_status, align 4
  %148 = load i32, i32* @KERN_DEBUG, align 4
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %150 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %146, i32 %147, i32 %148, i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %155 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %154)
  store %struct.bq_desc* %155, %struct.bq_desc** %9, align 8
  %156 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %157 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load %struct.sk_buff*, %struct.sk_buff** %158, align 8
  store %struct.sk_buff* %159, %struct.sk_buff** %10, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @ql_realign_skb(%struct.sk_buff* %160, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @skb_put(%struct.sk_buff* %163, i32 %164)
  %166 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %167 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %170 = load i32, i32* @mapaddr, align 4
  %171 = call i32 @pci_unmap_addr(%struct.bq_desc* %169, i32 %170)
  %172 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %173 = load i32, i32* @maplen, align 4
  %174 = call i32 @pci_unmap_len(%struct.bq_desc* %172, i32 %173)
  %175 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %176 = call i32 @pci_unmap_single(i32 %168, i32 %171, i32 %174, i32 %175)
  %177 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %178 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %179, align 8
  br label %180

180:                                              ; preds = %145, %101
  br label %455

181:                                              ; preds = %87
  %182 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %183 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %336

188:                                              ; preds = %181
  %189 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %190 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %248

195:                                              ; preds = %188
  %196 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %197 = load i32, i32* @rx_status, align 4
  %198 = load i32, i32* @KERN_DEBUG, align 4
  %199 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %200 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %196, i32 %197, i32 %198, i32 %201, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %205 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %206 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %204, %struct.rx_ring* %205)
  store %struct.bq_desc* %206, %struct.bq_desc** %8, align 8
  %207 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %208 = load i32, i32* @rx_status, align 4
  %209 = load i32, i32* @KERN_DEBUG, align 4
  %210 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %211 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %214 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %207, i32 %208, i32 %209, i32 %212, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %221 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %222 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %227 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @skb_fill_page_desc(%struct.sk_buff* %220, i32 0, i32 %225, i32 %230, i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %335

248:                                              ; preds = %188
  %249 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %250 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %251 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %249, %struct.rx_ring* %250)
  store %struct.bq_desc* %251, %struct.bq_desc** %8, align 8
  %252 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %253 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %11, align 4
  %256 = call %struct.sk_buff* @netdev_alloc_skb(i32 %254, i32 %255)
  store %struct.sk_buff* %256, %struct.sk_buff** %10, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %258 = icmp eq %struct.sk_buff* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %248
  %260 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %261 = load i32, i32* @probe, align 4
  %262 = load i32, i32* @KERN_DEBUG, align 4
  %263 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %264 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %260, i32 %261, i32 %262, i32 %265, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %457

267:                                              ; preds = %248
  %268 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %269 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %272 = load i32, i32* @mapaddr, align 4
  %273 = call i32 @pci_unmap_addr(%struct.bq_desc* %271, i32 %272)
  %274 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %275 = load i32, i32* @maplen, align 4
  %276 = call i32 @pci_unmap_len(%struct.bq_desc* %274, i32 %275)
  %277 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %278 = call i32 @pci_unmap_page(i32 %270, i32 %273, i32 %276, i32 %277)
  %279 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %280 = load i32, i32* @NET_IP_ALIGN, align 4
  %281 = call i32 @skb_reserve(%struct.sk_buff* %279, i32 %280)
  %282 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %283 = load i32, i32* @rx_status, align 4
  %284 = load i32, i32* @KERN_DEBUG, align 4
  %285 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %286 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %282, i32 %283, i32 %284, i32 %287, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  %290 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %291 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %292 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %297 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @skb_fill_page_desc(%struct.sk_buff* %290, i32 0, i32 %295, i32 %300, i32 %301)
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %305 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, %303
  store i32 %307, i32* %305, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %11, align 4
  %320 = sub nsw i32 %319, %318
  store i32 %320, i32* %11, align 4
  %321 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %322 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %323 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %267
  %329 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %332

330:                                              ; preds = %267
  %331 = load i32, i32* @ETH_HLEN, align 4
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ %329, %328 ], [ %331, %330 ]
  %334 = call i32 @__pskb_pull_tail(%struct.sk_buff* %321, i32 %333)
  br label %335

335:                                              ; preds = %332, %195
  br label %454

336:                                              ; preds = %181
  store i32 0, i32* %14, align 4
  %337 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %338 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %337)
  store %struct.bq_desc* %338, %struct.bq_desc** %9, align 8
  %339 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %340 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %343 = load i32, i32* @mapaddr, align 4
  %344 = call i32 @pci_unmap_addr(%struct.bq_desc* %342, i32 %343)
  %345 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %346 = load i32, i32* @maplen, align 4
  %347 = call i32 @pci_unmap_len(%struct.bq_desc* %345, i32 %346)
  %348 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %349 = call i32 @pci_unmap_single(i32 %341, i32 %344, i32 %347, i32 %348)
  %350 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %351 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %375, label %356

356:                                              ; preds = %336
  %357 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %358 = load i32, i32* @rx_status, align 4
  %359 = load i32, i32* @KERN_DEBUG, align 4
  %360 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %361 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %357, i32 %358, i32 %359, i32 %362, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %363)
  %365 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %366 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  %368 = load %struct.sk_buff*, %struct.sk_buff** %367, align 8
  store %struct.sk_buff* %368, %struct.sk_buff** %10, align 8
  %369 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %370 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %371, align 8
  %372 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %373 = load i32, i32* @NET_IP_ALIGN, align 4
  %374 = call i32 @skb_reserve(%struct.sk_buff* %372, i32 %373)
  br label %375

375:                                              ; preds = %356, %336
  br label %376

376:                                              ; preds = %394, %375
  %377 = load i32, i32* %11, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %439

379:                                              ; preds = %376
  %380 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %381 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %382 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %380, %struct.rx_ring* %381)
  store %struct.bq_desc* %382, %struct.bq_desc** %8, align 8
  %383 = load i32, i32* %11, align 4
  %384 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %385 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %379
  %389 = load i32, i32* %11, align 4
  br label %394

390:                                              ; preds = %379
  %391 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %392 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  br label %394

394:                                              ; preds = %390, %388
  %395 = phi i32 [ %389, %388 ], [ %393, %390 ]
  store i32 %395, i32* %13, align 4
  %396 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %397 = load i32, i32* @rx_status, align 4
  %398 = load i32, i32* @KERN_DEBUG, align 4
  %399 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %400 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %14, align 4
  %403 = load i32, i32* %13, align 4
  %404 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %396, i32 %397, i32 %398, i32 %401, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %402, i32 %403)
  %405 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %406 = load i32, i32* %14, align 4
  %407 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %408 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %413 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %13, align 4
  %418 = call i32 @skb_fill_page_desc(%struct.sk_buff* %405, i32 %406, i32 %411, i32 %416, i32 %417)
  %419 = load i32, i32* %13, align 4
  %420 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %421 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load i32, i32* %13, align 4
  %425 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %426 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, %424
  store i32 %428, i32* %426, align 4
  %429 = load i32, i32* %13, align 4
  %430 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %431 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %432, %429
  store i32 %433, i32* %431, align 4
  %434 = load i32, i32* %13, align 4
  %435 = load i32, i32* %11, align 4
  %436 = sub nsw i32 %435, %434
  store i32 %436, i32* %11, align 4
  %437 = load i32, i32* %14, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %14, align 4
  br label %376

439:                                              ; preds = %376
  %440 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %441 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %442 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %439
  %448 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %451

449:                                              ; preds = %439
  %450 = load i32, i32* @ETH_HLEN, align 4
  br label %451

451:                                              ; preds = %449, %447
  %452 = phi i32 [ %448, %447 ], [ %450, %449 ]
  %453 = call i32 @__pskb_pull_tail(%struct.sk_buff* %440, i32 %452)
  br label %454

454:                                              ; preds = %451, %335
  br label %455

455:                                              ; preds = %454, %180
  %456 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %456, %struct.sk_buff** %4, align 8
  br label %457

457:                                              ; preds = %455, %259, %78
  %458 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %458
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, ...) #1

declare dso_local %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bq_desc*, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.bq_desc*, i32) #1

declare dso_local i32 @ql_realign_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
