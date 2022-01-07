; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dma_desc*, i32, %struct.ring_info* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_desc = type { i8*, i8* }
%struct.ring_info = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i64 }
%struct.rx_header = type { i64, i64 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DESC_CTRL_LEN = common dso_local global i32 0, align 4
@DESC_CTRL_EOT = common dso_local global i32 0, align 4
@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32, i32)* @b44_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_alloc_rx_skb(%struct.b44* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_desc*, align 8
  %9 = alloca %struct.ring_info*, align 8
  %10 = alloca %struct.ring_info*, align 8
  %11 = alloca %struct.rx_header*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ring_info* null, %struct.ring_info** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.b44*, %struct.b44** %5, align 8
  %20 = getelementptr inbounds %struct.b44, %struct.b44* %19, i32 0, i32 7
  %21 = load %struct.ring_info*, %struct.ring_info** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %21, i64 %23
  store %struct.ring_info* %24, %struct.ring_info** %9, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.b44*, %struct.b44** %5, align 8
  %31 = getelementptr inbounds %struct.b44, %struct.b44* %30, i32 0, i32 7
  %32 = load %struct.ring_info*, %struct.ring_info** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i64 %34
  store %struct.ring_info* %35, %struct.ring_info** %10, align 8
  %36 = load %struct.b44*, %struct.b44** %5, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %40 = call %struct.sk_buff* @netdev_alloc_skb(i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %12, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = icmp eq %struct.sk_buff* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %235

46:                                               ; preds = %25
  %47 = load %struct.b44*, %struct.b44** %5, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i64 @dma_map_single(i32 %51, i64 %54, i32 %55, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load %struct.b44*, %struct.b44** %5, align 8
  %59 = getelementptr inbounds %struct.b44, %struct.b44* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @dma_mapping_error(i32 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %46
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i64 @DMA_BIT_MASK(i32 30)
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %162

73:                                               ; preds = %66, %46
  %74 = load %struct.b44*, %struct.b44** %5, align 8
  %75 = getelementptr inbounds %struct.b44, %struct.b44* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @dma_mapping_error(i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %73
  %83 = load %struct.b44*, %struct.b44** %5, align 8
  %84 = getelementptr inbounds %struct.b44, %struct.b44* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_unmap_single(i32 %87, i64 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %73
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %93)
  %95 = load %struct.b44*, %struct.b44** %5, align 8
  %96 = getelementptr inbounds %struct.b44, %struct.b44* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = load i32, i32* @GFP_DMA, align 4
  %101 = or i32 %99, %100
  %102 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %97, i32 %98, i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %12, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %104 = icmp eq %struct.sk_buff* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %235

108:                                              ; preds = %92
  %109 = load %struct.b44*, %struct.b44** %5, align 8
  %110 = getelementptr inbounds %struct.b44, %struct.b44* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %118 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %119 = call i64 @dma_map_single(i32 %113, i64 %116, i32 %117, i32 %118)
  store i64 %119, i64* %13, align 8
  %120 = load %struct.b44*, %struct.b44** %5, align 8
  %121 = getelementptr inbounds %struct.b44, %struct.b44* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @dma_mapping_error(i32 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %108
  %129 = load i64, i64* %13, align 8
  %130 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = call i64 @DMA_BIT_MASK(i32 30)
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %128, %108
  %136 = load %struct.b44*, %struct.b44** %5, align 8
  %137 = getelementptr inbounds %struct.b44, %struct.b44* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %13, align 8
  %142 = call i64 @dma_mapping_error(i32 %140, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %135
  %145 = load %struct.b44*, %struct.b44** %5, align 8
  %146 = getelementptr inbounds %struct.b44, %struct.b44* %145, i32 0, i32 3
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %13, align 8
  %151 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %152 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %153 = call i32 @dma_unmap_single(i32 %149, i64 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %144, %135
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %155)
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %235

159:                                              ; preds = %128
  %160 = load %struct.b44*, %struct.b44** %5, align 8
  %161 = getelementptr inbounds %struct.b44, %struct.b44* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %66
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.rx_header*
  store %struct.rx_header* %166, %struct.rx_header** %11, align 8
  %167 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %168 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %170 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %172 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %173 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %172, i32 0, i32 0
  store %struct.sk_buff* %171, %struct.sk_buff** %173, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %176 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %178 = icmp ne %struct.ring_info* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %162
  %180 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %181 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %180, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %181, align 8
  br label %182

182:                                              ; preds = %179, %162
  %183 = load i32, i32* @DESC_CTRL_LEN, align 4
  %184 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %185 = and i32 %183, %184
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load i32, i32* @DESC_CTRL_EOT, align 4
  %192 = load i32, i32* %15, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %190, %182
  %195 = load %struct.b44*, %struct.b44** %5, align 8
  %196 = getelementptr inbounds %struct.b44, %struct.b44* %195, i32 0, i32 5
  %197 = load %struct.dma_desc*, %struct.dma_desc** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %197, i64 %199
  store %struct.dma_desc* %200, %struct.dma_desc** %8, align 8
  %201 = load i32, i32* %15, align 4
  %202 = call i8* @cpu_to_le32(i32 %201)
  %203 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %204 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load i64, i64* %13, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.b44*, %struct.b44** %5, align 8
  %208 = getelementptr inbounds %struct.b44, %struct.b44* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %206, %209
  %211 = call i8* @cpu_to_le32(i32 %210)
  %212 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %213 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.b44*, %struct.b44** %5, align 8
  %215 = getelementptr inbounds %struct.b44, %struct.b44* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %194
  %221 = load %struct.b44*, %struct.b44** %5, align 8
  %222 = getelementptr inbounds %struct.b44, %struct.b44* %221, i32 0, i32 3
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load %struct.b44*, %struct.b44** %5, align 8
  %225 = getelementptr inbounds %struct.b44, %struct.b44* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 16
  %230 = trunc i64 %229 to i32
  %231 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %232 = call i32 @b44_sync_dma_desc_for_device(%struct.TYPE_2__* %223, i32 %226, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %220, %194
  %234 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %154, %105, %43
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @b44_sync_dma_desc_for_device(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
