; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_alloc_jumbo_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_alloc_jumbo_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_2__, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_rx_ring = type { i32, i32, i64, %struct.e1000_buffer* }
%struct.e1000_buffer = type { i64, %struct.sk_buff*, i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.e1000_rx_desc = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skb align check failed: %u bytes at %p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)* @e1000_alloc_jumbo_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_jumbo_rx_buffers(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.e1000_rx_desc*, align 8
  %10 = alloca %struct.e1000_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  store i32 240, i32* %13, align 4
  %21 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %25 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %24, i32 0, i32 3
  %26 = load %struct.e1000_buffer*, %struct.e1000_buffer** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %26, i64 %28
  store %struct.e1000_buffer* %29, %struct.e1000_buffer** %10, align 8
  br label %30

30:                                               ; preds = %198, %3
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %205

34:                                               ; preds = %30
  %35 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %36 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %35, i32 0, i32 1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %11, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i32 @skb_trim(%struct.sk_buff* %41, i32 0)
  br label %111

43:                                               ; preds = %34
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %11, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %205

58:                                               ; preds = %43
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %59, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %14, align 8
  %68 = load i32, i32* @rx_err, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @e_err(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %74, i32 %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %11, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %66
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = call i32 @dev_kfree_skb(%struct.sk_buff* %80)
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %205

86:                                               ; preds = %66
  %87 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %87, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i32 @dev_kfree_skb(%struct.sk_buff* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %98 = call i32 @dev_kfree_skb(%struct.sk_buff* %97)
  br label %205

99:                                               ; preds = %86
  %100 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %101 = call i32 @dev_kfree_skb(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %58
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %105 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %104, i32 0, i32 1
  store %struct.sk_buff* %103, %struct.sk_buff** %105, align 8
  %106 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %110 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %102, %40
  %112 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %113 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %135, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call i32* @alloc_page(i32 %117)
  %119 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %120 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %122 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %116
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %205

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %137 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %178, label %140

140:                                              ; preds = %135
  %141 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %144 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i64 @dma_map_page(i32* %142, i32* %145, i32 0, i32 %148, i32 %149)
  %151 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %152 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %156 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @dma_mapping_error(i32* %154, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %140
  %161 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %162 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @put_page(i32* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %166 = call i32 @dev_kfree_skb(%struct.sk_buff* %165)
  %167 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %168 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %167, i32 0, i32 2
  store i32* null, i32** %168, align 8
  %169 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %170 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %169, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %170, align 8
  %171 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %172 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  %173 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %205

177:                                              ; preds = %140
  br label %178

178:                                              ; preds = %177, %135
  %179 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %179, i32 %180)
  store %struct.e1000_rx_desc* %181, %struct.e1000_rx_desc** %9, align 8
  %182 = load %struct.e1000_buffer*, %struct.e1000_buffer** %10, align 8
  %183 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @cpu_to_le64(i64 %184)
  %186 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %9, align 8
  %187 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %12, align 4
  %190 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %191 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %189, %192
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %178
  store i32 0, i32* %12, align 4
  br label %198

198:                                              ; preds = %197, %178
  %199 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %200 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %199, i32 0, i32 3
  %201 = load %struct.e1000_buffer*, %struct.e1000_buffer** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %201, i64 %203
  store %struct.e1000_buffer* %204, %struct.e1000_buffer** %10, align 8
  br label %30

205:                                              ; preds = %160, %129, %94, %79, %53, %30
  %206 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %207 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i64 @likely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %241

214:                                              ; preds = %205
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %217 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %12, align 4
  %219 = add i32 %218, -1
  store i32 %219, i32* %12, align 4
  %220 = icmp eq i32 %218, 0
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %214
  %225 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %226 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sub i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %224, %214
  %230 = call i32 (...) @wmb()
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %233 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %237 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %235, %238
  %240 = call i32 @writel(i32 %231, i64 %239)
  br label %241

241:                                              ; preds = %229, %205
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @e1000_check_64k_bound(%struct.e1000_adapter*, i32, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @put_page(i32*) #1

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
