; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_info* }
%struct.mlx4_en_tx_desc = type { i32 }
%struct.mlx4_en_tx_info = type { i32, i32, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mlx4_wqe_data_seg = type { i32, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@TXBB_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32, i32)* @mlx4_en_free_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_en_dev*, align 8
  %12 = alloca %struct.mlx4_en_tx_info*, align 8
  %13 = alloca %struct.mlx4_en_tx_desc*, align 8
  %14 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.skb_frag_struct*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.skb_shared_hwtstamps, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 1
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %22, align 8
  store %struct.mlx4_en_dev* %23, %struct.mlx4_en_dev** %11, align 8
  %24 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %24, i32 0, i32 2
  %26 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %26, i64 %28
  store %struct.mlx4_en_tx_info* %29, %struct.mlx4_en_tx_info** %12, align 8
  %30 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %30, i32 0, i32 1
  %32 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TXBB_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %32, i64 %36
  store %struct.mlx4_en_tx_desc* %37, %struct.mlx4_en_tx_desc** %13, align 8
  %38 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %13, align 8
  %39 = bitcast %struct.mlx4_en_tx_desc* %38 to i8*
  %40 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %39, i64 %43
  %45 = bitcast i8* %44 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %45, %struct.mlx4_wqe_data_seg** %14, align 8
  %46 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %46, i32 0, i32 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %15, align 8
  %49 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %49, i32 0, i32 1
  %51 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %50, align 8
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %51, i64 %55
  %57 = bitcast %struct.mlx4_en_tx_desc* %56 to i8*
  store i8* %57, i8** %17, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %59 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %5
  %65 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @mlx4_en_fill_hwtstamps(%struct.mlx4_en_dev* %65, %struct.skb_shared_hwtstamps* %20, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = call i32 @skb_tstamp_tx(%struct.sk_buff* %68, %struct.skb_shared_hwtstamps* %20)
  br label %70

70:                                               ; preds = %64, %5
  %71 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %13, align 8
  %72 = bitcast %struct.mlx4_en_tx_desc* %71 to i8*
  %73 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TXBB_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %72, i64 %78
  %80 = load i8*, i8** %17, align 8
  %81 = icmp ule i8* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %70
  %86 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %145, label %90

90:                                               ; preds = %85
  %91 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %100 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be64_to_cpu(i32 %101)
  %103 = trunc i64 %102 to i32
  %104 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %105 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @be32_to_cpu(i32 %106)
  %108 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %109 = call i32 @dma_unmap_single(i32 %98, i32 %103, i32 %107, i32 %108)
  %110 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %111 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %110, i32 1
  store %struct.mlx4_wqe_data_seg* %111, %struct.mlx4_wqe_data_seg** %14, align 8
  br label %112

112:                                              ; preds = %95, %90
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %141, %112
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %119 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %121, i64 %123
  store %struct.skb_frag_struct* %124, %struct.skb_frag_struct** %16, align 8
  %125 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %128, i64 %130
  %132 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @be64_to_cpu(i32 %133)
  %135 = trunc i64 %134 to i32
  %136 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %16, align 8
  %137 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %140 = call i32 @dma_unmap_page(i32 %127, i32 %135, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %117
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %113

144:                                              ; preds = %113
  br label %145

145:                                              ; preds = %144, %85
  br label %233

146:                                              ; preds = %70
  %147 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %148 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %232, label %151

151:                                              ; preds = %146
  %152 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %153 = bitcast %struct.mlx4_wqe_data_seg* %152 to i8*
  %154 = load i8*, i8** %17, align 8
  %155 = icmp uge i8* %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %158 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %157, i32 0, i32 1
  %159 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %158, align 8
  %160 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %161 = bitcast %struct.mlx4_wqe_data_seg* %160 to i8*
  %162 = load i8*, i8** %17, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %159, i64 %165
  %167 = bitcast %struct.mlx4_en_tx_desc* %166 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %167, %struct.mlx4_wqe_data_seg** %14, align 8
  br label %168

168:                                              ; preds = %156, %151
  %169 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %170 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %175 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %178 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @be64_to_cpu(i32 %179)
  %181 = trunc i64 %180 to i32
  %182 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %183 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @be32_to_cpu(i32 %184)
  %186 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %187 = call i32 @dma_unmap_single(i32 %176, i32 %181, i32 %185, i32 %186)
  %188 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %189 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %188, i32 1
  store %struct.mlx4_wqe_data_seg* %189, %struct.mlx4_wqe_data_seg** %14, align 8
  br label %190

190:                                              ; preds = %173, %168
  store i32 0, i32* %19, align 4
  br label %191

191:                                              ; preds = %228, %190
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %18, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %231

195:                                              ; preds = %191
  %196 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %197 = bitcast %struct.mlx4_wqe_data_seg* %196 to i8*
  %198 = load i8*, i8** %17, align 8
  %199 = icmp uge i8* %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %202 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %201, i32 0, i32 1
  %203 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %202, align 8
  %204 = bitcast %struct.mlx4_en_tx_desc* %203 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %204, %struct.mlx4_wqe_data_seg** %14, align 8
  br label %205

205:                                              ; preds = %200, %195
  %206 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %207 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %206)
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %208, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %209, i64 %211
  store %struct.skb_frag_struct* %212, %struct.skb_frag_struct** %16, align 8
  %213 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %214 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %217 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @be64_to_cpu(i32 %218)
  %220 = trunc i64 %219 to i32
  %221 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %16, align 8
  %222 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %225 = call i32 @dma_unmap_page(i32 %215, i32 %220, i32 %223, i32 %224)
  %226 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %14, align 8
  %227 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %226, i32 1
  store %struct.mlx4_wqe_data_seg* %227, %struct.mlx4_wqe_data_seg** %14, align 8
  br label %228

228:                                              ; preds = %205
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %19, align 4
  br label %191

231:                                              ; preds = %191
  br label %232

232:                                              ; preds = %231, %146
  br label %233

233:                                              ; preds = %232, %145
  %234 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %235 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %234)
  %236 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %12, align 8
  %237 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  ret i32 %238
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @mlx4_en_fill_hwtstamps(%struct.mlx4_en_dev*, %struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
