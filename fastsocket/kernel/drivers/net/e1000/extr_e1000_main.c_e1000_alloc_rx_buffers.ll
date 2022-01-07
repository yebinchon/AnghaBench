; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.pci_dev*, %struct.net_device*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_rx_ring = type { i32, i32, i64, %struct.e1000_buffer* }
%struct.e1000_buffer = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i8* }
%struct.e1000_rx_desc = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skb align check failed: %u bytes at %p\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"dma align check failed: %u bytes at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)* @e1000_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_rx_buffers(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.e1000_rx_desc*, align 8
  %11 = alloca %struct.e1000_buffer*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 4
  store %struct.e1000_hw* %17, %struct.e1000_hw** %7, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 3
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %9, align 8
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %30, i32 0, i32 3
  %32 = load %struct.e1000_buffer*, %struct.e1000_buffer** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %32, i64 %34
  store %struct.e1000_buffer* %35, %struct.e1000_buffer** %11, align 8
  br label %36

36:                                               ; preds = %213, %3
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %220

40:                                               ; preds = %36
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %42 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %41, i32 0, i32 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = call i32 @skb_trim(%struct.sk_buff* %47, i32 0)
  br label %121

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %220

64:                                               ; preds = %49
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %65, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %112, label %72

72:                                               ; preds = %64
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %15, align 8
  %74 = load i32, i32* @rx_err, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @e_err(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %78)
  %80 = load %struct.net_device*, %struct.net_device** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %12, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %72
  %86 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %220

92:                                               ; preds = %72
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %93, i8* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = call i32 @dev_kfree_skb(%struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %104 = call i32 @dev_kfree_skb(%struct.sk_buff* %103)
  %105 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %220

109:                                              ; preds = %92
  %110 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %111 = call i32 @dev_kfree_skb(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %109, %64
  %113 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %114 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %115 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %114, i32 0, i32 2
  store %struct.sk_buff* %113, %struct.sk_buff** %115, align 8
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %120 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %112, %46
  %122 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %128 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %131 = call i64 @dma_map_single(i32* %123, i8* %126, i32 %129, i32 %130)
  %132 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %133 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %137 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @dma_mapping_error(i32* %135, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %121
  %142 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %143 = call i32 @dev_kfree_skb(%struct.sk_buff* %142)
  %144 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %145 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %144, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %145, align 8
  %146 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %220

152:                                              ; preds = %121
  %153 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %154 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %155 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %159 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %153, i8* %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %193, label %163

163:                                              ; preds = %152
  %164 = load i32, i32* @rx_err, align 4
  %165 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %166 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %169 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = call i32 @e_err(i32 %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %167, i8* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = call i32 @dev_kfree_skb(%struct.sk_buff* %173)
  %175 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %176 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %175, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %176, align 8
  %177 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %180 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %183 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %186 = call i32 @dma_unmap_single(i32* %178, i64 %181, i32 %184, i32 %185)
  %187 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %188 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %190 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %220

193:                                              ; preds = %152
  %194 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %194, i32 %195)
  store %struct.e1000_rx_desc* %196, %struct.e1000_rx_desc** %10, align 8
  %197 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %198 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @cpu_to_le64(i64 %199)
  %201 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %202 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %13, align 4
  %205 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %206 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %193
  store i32 0, i32* %13, align 4
  br label %213

213:                                              ; preds = %212, %193
  %214 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %215 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %214, i32 0, i32 3
  %216 = load %struct.e1000_buffer*, %struct.e1000_buffer** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %216, i64 %218
  store %struct.e1000_buffer* %219, %struct.e1000_buffer** %11, align 8
  br label %36

220:                                              ; preds = %163, %141, %100, %85, %59, %36
  %221 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %222 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i64 @likely(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %255

229:                                              ; preds = %220
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %232 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %13, align 4
  %234 = add i32 %233, -1
  store i32 %234, i32* %13, align 4
  %235 = icmp eq i32 %233, 0
  %236 = zext i1 %235 to i32
  %237 = call i64 @unlikely(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %229
  %240 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %241 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sub i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %239, %229
  %245 = call i32 (...) @wmb()
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %248 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %251 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %249, %252
  %254 = call i32 @writel(i32 %246, i64 %253)
  br label %255

255:                                              ; preds = %244, %220
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @e1000_check_64k_bound(%struct.e1000_adapter*, i8*, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
