; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32, i32, %struct.ixgbevf_tx_buffer*, i32 }
%struct.ixgbevf_tx_buffer = type { i32, i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.skb_frag_struct = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@IXGBE_MAX_DATA_PER_TXD = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, %struct.sk_buff*, i32)* @ixgbevf_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_tx_map(%struct.ixgbevf_ring* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.skb_frag_struct*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @skb_headlen(%struct.sk_buff* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %94, %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %32
  %36 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %36, i32 0, i32 2
  %38 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %38, i64 %40
  store %struct.ixgbevf_tx_buffer* %41, %struct.ixgbevf_tx_buffer** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* @IXGBE_MAX_DATA_PER_TXD, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @min(i32 %42, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i64 @dma_map_single(i32 %53, i64 %59, i32 %60, i32 %61)
  %63 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @dma_mapping_error(i32 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %35
  br label %202

74:                                               ; preds = %35
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %90 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %74
  br label %32

95:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %178, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %181

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %104, i64 %106
  store %struct.skb_frag_struct* %107, %struct.skb_frag_struct** %17, align 8
  %108 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %17, align 8
  %109 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @min(i32 %111, i32 %112)
  store i32 %113, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %172, %100
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %173

117:                                              ; preds = %114
  %118 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %119 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %118, i32 0, i32 2
  %120 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %120, i64 %122
  store %struct.ixgbevf_tx_buffer* %123, %struct.ixgbevf_tx_buffer** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i64, i64* @IXGBE_MAX_DATA_PER_TXD, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @min(i32 %124, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %130 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %132 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %17, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @DMA_TO_DEVICE, align 4
  %138 = call i64 @skb_frag_dma_map(i32 %133, %struct.skb_frag_struct* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %140 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  %141 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %142 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %145 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @dma_mapping_error(i32 %143, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %117
  br label %202

150:                                              ; preds = %117
  %151 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %152 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %168 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %150
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %171, %150
  br label %114

173:                                              ; preds = %114
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %181

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %96

181:                                              ; preds = %176, %96
  %182 = load i32, i32* %16, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %186 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %192

189:                                              ; preds = %181
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %189, %184
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %195 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %194, i32 0, i32 2
  %196 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %196, i64 %198
  %200 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %199, i32 0, i32 3
  store %struct.sk_buff* %193, %struct.sk_buff** %200, align 8
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %4, align 4
  br label %239

202:                                              ; preds = %149, %73
  %203 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %204 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @dev_err(i32 %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %207 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %208 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %207, i32 0, i32 2
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %13, align 4
  br label %211

211:                                              ; preds = %227, %202
  %212 = load i32, i32* %13, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %237

214:                                              ; preds = %211
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %223 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %16, align 4
  br label %227

227:                                              ; preds = %221, %214
  %228 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %229 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %228, i32 0, i32 2
  %230 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %230, i64 %232
  store %struct.ixgbevf_tx_buffer* %233, %struct.ixgbevf_tx_buffer** %8, align 8
  %234 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %235 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %8, align 8
  %236 = call i32 @ixgbevf_unmap_and_free_tx_resource(%struct.ixgbevf_ring* %234, %struct.ixgbevf_tx_buffer* %235)
  br label %211

237:                                              ; preds = %211
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %237, %192
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @skb_frag_dma_map(i32, %struct.skb_frag_struct*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ixgbevf_unmap_and_free_tx_resource(%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
