; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_grctx_generate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_grctx_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i32*, i32, i32 }
%struct.nvc0_grctx = type { i32 }

@GPC_MAX = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_SYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nve0_grctx_generate(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvc0_graph_priv*, align 8
  %4 = alloca %struct.nvc0_grctx, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %3, align 8
  %26 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 24, i1 false)
  %27 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* @GPC_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca [2 x i32], i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i32, i32* @GPC_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %36 = call i32 @nvc0_grctx_init(%struct.nvc0_graph_priv* %35, %struct.nvc0_grctx* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %23, align 4
  br label %665

41:                                               ; preds = %1
  %42 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %43 = call i32 @nv_mask(%struct.nvc0_graph_priv* %42, i32 608, i32 1, i32 0)
  %44 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %45 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %44, i32 4194820, i32 0)
  %46 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %47 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %46, i32 4194824, i32 0)
  %48 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %49 = call i32 @nve0_graph_generate_unk40xx(%struct.nvc0_graph_priv* %48)
  %50 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %51 = call i32 @nve0_graph_generate_unk44xx(%struct.nvc0_graph_priv* %50)
  %52 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %53 = call i32 @nve0_graph_generate_unk46xx(%struct.nvc0_graph_priv* %52)
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %55 = call i32 @nve0_graph_generate_unk47xx(%struct.nvc0_graph_priv* %54)
  %56 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %57 = call i32 @nve0_graph_generate_unk58xx(%struct.nvc0_graph_priv* %56)
  %58 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %59 = call i32 @nve0_graph_generate_unk60xx(%struct.nvc0_graph_priv* %58)
  %60 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %61 = call i32 @nve0_graph_generate_unk64xx(%struct.nvc0_graph_priv* %60)
  %62 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %63 = call i32 @nve0_graph_generate_unk70xx(%struct.nvc0_graph_priv* %62)
  %64 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %65 = call i32 @nve0_graph_generate_unk78xx(%struct.nvc0_graph_priv* %64)
  %66 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %67 = call i32 @nve0_graph_generate_unk80xx(%struct.nvc0_graph_priv* %66)
  %68 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %69 = call i32 @nve0_graph_generate_unk88xx(%struct.nvc0_graph_priv* %68)
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %71 = call i32 @nve0_graph_generate_gpc(%struct.nvc0_graph_priv* %70)
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %73 = call i32 @nve0_graph_generate_tpc(%struct.nvc0_graph_priv* %72)
  %74 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %75 = call i32 @nve0_graph_generate_tpcunk(%struct.nvc0_graph_priv* %74)
  %76 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %77 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %76, i32 4211028, i32 0)
  %78 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %79 = load i32, i32* @NV_MEM_ACCESS_SYS, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @mmio_data(i32 12288, i32 256, i32 %80)
  %82 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %83 = load i32, i32* @NV_MEM_ACCESS_SYS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @mmio_data(i32 32768, i32 256, i32 %84)
  %86 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %87 = call i32 @mmio_data(i32 393216, i32 4096, i32 %86)
  %88 = call i32 @mmio_list(i32 4227084, i32 0, i32 8, i32 1)
  %89 = call i32 @mmio_list(i32 4227088, i32 -2147483648, i32 0, i32 0)
  %90 = call i32 @mmio_list(i32 4296708, i32 0, i32 8, i32 1)
  %91 = call i32 @mmio_list(i32 4296712, i32 0, i32 0, i32 0)
  %92 = call i32 @mmio_list(i32 4220108, i32 -2147483648, i32 0, i32 0)
  %93 = call i32 @mmio_list(i32 4227076, i32 0, i32 8, i32 0)
  %94 = call i32 @mmio_list(i32 4227080, i32 -2147483600, i32 0, i32 0)
  %95 = call i32 @mmio_list(i32 4294664, i32 0, i32 8, i32 0)
  %96 = call i32 @mmio_list(i32 4294668, i32 -2147483600, i32 0, i32 0)
  %97 = call i32 @mmio_list(i32 4220104, i32 25167360, i32 0, i32 0)
  %98 = call i32 @mmio_list(i32 4294672, i32 -2147483648, i32 12, i32 2)
  %99 = call i32 @mmio_list(i32 4298824, i32 268435456, i32 12, i32 2)
  %100 = call i32 @mmio_list(i32 4216880, i32 35128904, i32 0, i32 0)
  %101 = call i32 @mmio_list(i32 4220100, i32 26411007, i32 0, i32 0)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %151, %41
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %105 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %154

108:                                              ; preds = %102
  %109 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %110 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 536, %115
  store i32 %116, i32* %24, align 4
  %117 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %118 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 1608, %123
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %24, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 268435456, %126
  %128 = load i32, i32* %17, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 %131
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0
  store i32 %129, i32* %133, align 8
  %134 = load i32, i32* %25, align 4
  %135 = shl i32 %134, 16
  %136 = or i32 0, %135
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 %138
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 0, i64 1
  store i32 %136, i32* %140, align 4
  %141 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %142 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 804, %147
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %108
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %102

154:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %190, %154
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %158 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %193

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @GPC_UNIT(i32 %162, i32 12480)
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 %165
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @mmio_list(i32 %163, i32 %168, i32 0, i32 0)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @GPC_UNIT(i32 %170, i32 12516)
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 %173
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %174, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %17, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @mmio_list(i32 %171, i32 %178, i32 0, i32 0)
  %180 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %181 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 2047, %186
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %161
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %155

193:                                              ; preds = %155
  %194 = call i32 @mmio_list(i32 1567004, i32 101058057, i32 0, i32 0)
  %195 = call i32 @mmio_list(i32 1567008, i32 592389, i32 0, i32 0)
  %196 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %197 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %196, i32 4295788, i32 1)
  %198 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %199 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %198, i32 4298764, i32 16)
  %200 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %201 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %200, i32 4308488, i32 4)
  %202 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %203 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %202, i32 4220096, i32 -2145779472)
  %204 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %205 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %204, i32 4216832, i32 260047039)
  %206 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %207 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %206, i32 4299776, i32 10)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %283, %193
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 4
  br i1 %210, label %211, label %286

211:                                              ; preds = %208
  store i32 0, i32* %7, align 4
  br label %212

212:                                              ; preds = %279, %211
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %215 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %282

218:                                              ; preds = %212
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %221 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %219, %226
  br i1 %227, label %228, label %256

228:                                              ; preds = %218
  %229 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @TPC_UNIT(i32 %230, i32 %231, i32 1688)
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %229, i32 %232, i32 %233)
  %235 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @TPC_UNIT(i32 %236, i32 %237, i32 1256)
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %235, i32 %238, i32 %239)
  %241 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = mul nsw i32 %243, 4
  %245 = add nsw i32 3088, %244
  %246 = call i32 @GPC_UNIT(i32 %242, i32 %245)
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %241, i32 %246, i32 %247)
  %249 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @TPC_UNIT(i32 %250, i32 %251, i32 136)
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  %255 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %249, i32 %252, i32 %253)
  br label %256

256:                                              ; preds = %228, %218
  %257 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @GPC_UNIT(i32 %258, i32 3080)
  %260 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %261 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %257, i32 %259, i32 %266)
  %268 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @GPC_UNIT(i32 %269, i32 3212)
  %271 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %272 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %268, i32 %270, i32 %277)
  br label %279

279:                                              ; preds = %256
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %212

282:                                              ; preds = %212
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %208

286:                                              ; preds = %208
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %306, %286
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %290 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %309

293:                                              ; preds = %287
  %294 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %295 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %6, align 4
  %302 = mul nsw i32 %301, 4
  %303 = shl i32 %300, %302
  %304 = load i32, i32* %12, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %12, align 4
  br label %306

306:                                              ; preds = %293
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %6, align 4
  br label %287

309:                                              ; preds = %287
  %310 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %310, i32 4218920, i32 %311)
  %313 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %313, i32 4216944, i32 %314)
  %316 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %317 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %316, i32 4218924, i32 0)
  %318 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %319 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %318, i32 4216948, i32 0)
  %320 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %321 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %320, i32 4218928, i32 0)
  %322 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %323 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %322, i32 4216952, i32 0)
  %324 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %325 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %324, i32 4218932, i32 0)
  %326 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %327 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %326, i32 4216956, i32 0)
  %328 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %329 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @memcpy(i32* %34, i32* %330, i32 8)
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %332

332:                                              ; preds = %370, %309
  %333 = load i32, i32* %8, align 4
  %334 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %335 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %373

338:                                              ; preds = %332
  br label %339

339:                                              ; preds = %346, %338
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  %342 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %343 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = srem i32 %341, %344
  store i32 %345, i32* %7, align 4
  br label %346

346:                                              ; preds = %339
  %347 = load i32, i32* %7, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %34, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  %352 = xor i1 %351, true
  br i1 %352, label %339, label %353

353:                                              ; preds = %346
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %34, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %356, align 4
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %8, align 4
  %361 = srem i32 %360, 6
  %362 = mul nsw i32 %361, 5
  %363 = shl i32 %359, %362
  %364 = load i32, i32* %8, align 4
  %365 = sdiv i32 %364, 6
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %363
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %353
  %371 = load i32, i32* %8, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %8, align 4
  br label %332

373:                                              ; preds = %332
  br label %374

374:                                              ; preds = %388, %373
  %375 = load i32, i32* %8, align 4
  %376 = icmp slt i32 %375, 32
  br i1 %376, label %377, label %391

377:                                              ; preds = %374
  %378 = load i32, i32* %8, align 4
  %379 = srem i32 %378, 6
  %380 = mul nsw i32 %379, 5
  %381 = shl i32 7, %380
  %382 = load i32, i32* %8, align 4
  %383 = sdiv i32 %382, 6
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %381
  store i32 %387, i32* %385, align 4
  br label %388

388:                                              ; preds = %377
  %389 = load i32, i32* %8, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %8, align 4
  br label %374

391:                                              ; preds = %374
  store i32 0, i32* %21, align 4
  %392 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %393 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %22, align 4
  br label %395

395:                                              ; preds = %400, %391
  %396 = load i32, i32* %22, align 4
  %397 = and i32 %396, 16
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = load i32, i32* %22, align 4
  %402 = shl i32 %401, 1
  store i32 %402, i32* %22, align 4
  %403 = load i32, i32* %21, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %21, align 4
  br label %395

405:                                              ; preds = %395
  %406 = load i32, i32* %22, align 4
  %407 = shl i32 %406, 16
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %407, i32* %408, align 4
  %409 = load i32, i32* %21, align 4
  %410 = shl i32 %409, 21
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, %410
  store i32 %413, i32* %411, align 4
  %414 = load i32, i32* %22, align 4
  %415 = srem i32 32, %414
  %416 = shl i32 %415, 24
  %417 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %418, %416
  store i32 %419, i32* %417, align 4
  %420 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %421 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = shl i32 %422, 8
  %424 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %423
  store i32 %426, i32* %424, align 4
  %427 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %428 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %431 = load i32, i32* %430, align 4
  %432 = or i32 %431, %429
  store i32 %432, i32* %430, align 4
  store i32 1, i32* %6, align 4
  br label %433

433:                                              ; preds = %449, %405
  %434 = load i32, i32* %6, align 4
  %435 = icmp slt i32 %434, 7
  br i1 %435, label %436, label %452

436:                                              ; preds = %433
  %437 = load i32, i32* %6, align 4
  %438 = add nsw i32 %437, 5
  %439 = shl i32 1, %438
  %440 = load i32, i32* %22, align 4
  %441 = srem i32 %439, %440
  %442 = load i32, i32* %6, align 4
  %443 = sub nsw i32 %442, 1
  %444 = mul nsw i32 %443, 5
  %445 = shl i32 %441, %444
  %446 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %447, %445
  store i32 %448, i32* %446, align 4
  br label %449

449:                                              ; preds = %436
  %450 = load i32, i32* %6, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %6, align 4
  br label %433

452:                                              ; preds = %433
  %453 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %454 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %455 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = shl i32 %456, 8
  %458 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %459 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = or i32 %457, %460
  %462 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %453, i32 4295608, i32 %461)
  store i32 0, i32* %6, align 4
  br label %463

463:                                              ; preds = %476, %452
  %464 = load i32, i32* %6, align 4
  %465 = icmp slt i32 %464, 6
  br i1 %465, label %466, label %479

466:                                              ; preds = %463
  %467 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %468 = load i32, i32* %6, align 4
  %469 = mul nsw i32 %468, 4
  %470 = add nsw i32 4295432, %469
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %467, i32 %470, i32 %474)
  br label %476

476:                                              ; preds = %466
  %477 = load i32, i32* %6, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %6, align 4
  br label %463

479:                                              ; preds = %463
  %480 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %481 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %480, i32 4308944, i32 %482)
  %484 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %485 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %484, i32 4308964, i32 %486)
  store i32 0, i32* %6, align 4
  br label %488

488:                                              ; preds = %501, %479
  %489 = load i32, i32* %6, align 4
  %490 = icmp slt i32 %489, 6
  br i1 %490, label %491, label %504

491:                                              ; preds = %488
  %492 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %493 = load i32, i32* %6, align 4
  %494 = mul nsw i32 %493, 4
  %495 = add nsw i32 4308736, %494
  %496 = load i32, i32* %6, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %492, i32 %495, i32 %499)
  br label %501

501:                                              ; preds = %491
  %502 = load i32, i32* %6, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %6, align 4
  br label %488

504:                                              ; preds = %488
  %505 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %506 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %507 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = shl i32 %508, 8
  %510 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %511 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = or i32 %509, %512
  %514 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %505, i32 4225212, i32 %513)
  store i32 0, i32* %6, align 4
  br label %515

515:                                              ; preds = %528, %504
  %516 = load i32, i32* %6, align 4
  %517 = icmp slt i32 %516, 6
  br i1 %517, label %518, label %531

518:                                              ; preds = %515
  %519 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %520 = load i32, i32* %6, align 4
  %521 = mul nsw i32 %520, 4
  %522 = add nsw i32 4225036, %521
  %523 = load i32, i32* %6, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %519, i32 %522, i32 %526)
  br label %528

528:                                              ; preds = %518
  %529 = load i32, i32* %6, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %6, align 4
  br label %515

531:                                              ; preds = %515
  %532 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %533 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %532, i32 0, i32 1
  %534 = load i32*, i32** %533, align 8
  %535 = call i32 @memcpy(i32* %34, i32* %534, i32 8)
  store i32 0, i32* %7, align 4
  br label %536

536:                                              ; preds = %557, %531
  %537 = load i32, i32* %7, align 4
  %538 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %539 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %542, label %560

542:                                              ; preds = %536
  %543 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %544 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %543, i32 0, i32 1
  %545 = load i32*, i32** %544, align 8
  %546 = load i32, i32* %7, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = shl i32 1, %549
  %551 = sub nsw i32 %550, 1
  %552 = load i32, i32* %7, align 4
  %553 = mul nsw i32 %552, 8
  %554 = shl i32 %551, %553
  %555 = load i32, i32* %14, align 4
  %556 = or i32 %555, %554
  store i32 %556, i32* %14, align 4
  br label %557

557:                                              ; preds = %542
  %558 = load i32, i32* %7, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %7, align 4
  br label %536

560:                                              ; preds = %536
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %20, align 4
  br label %561

561:                                              ; preds = %627, %560
  %562 = load i32, i32* %6, align 4
  %563 = icmp slt i32 %562, 32
  br i1 %563, label %564, label %630

564:                                              ; preds = %561
  %565 = load i32, i32* %6, align 4
  %566 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %567 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %566, i32 0, i32 2
  %568 = load i32, i32* %567, align 8
  %569 = sub nsw i32 %568, 1
  %570 = mul nsw i32 %565, %569
  %571 = sdiv i32 %570, 32
  store i32 %571, i32* %19, align 4
  %572 = load i32, i32* %19, align 4
  %573 = load i32, i32* %20, align 4
  %574 = icmp ne i32 %572, %573
  br i1 %574, label %575, label %612

575:                                              ; preds = %564
  %576 = load i32, i32* %19, align 4
  store i32 %576, i32* %20, align 4
  br label %577

577:                                              ; preds = %584, %575
  %578 = load i32, i32* %7, align 4
  %579 = add nsw i32 %578, 1
  %580 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %581 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = srem i32 %579, %582
  store i32 %583, i32* %7, align 4
  br label %584

584:                                              ; preds = %577
  %585 = load i32, i32* %7, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %34, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  %590 = xor i1 %589, true
  br i1 %590, label %577, label %591

591:                                              ; preds = %584
  %592 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %593 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %592, i32 0, i32 1
  %594 = load i32*, i32** %593, align 8
  %595 = load i32, i32* %7, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* %7, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %34, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = add nsw i32 %602, -1
  store i32 %603, i32* %601, align 4
  %604 = sub nsw i32 %598, %602
  store i32 %604, i32* %8, align 4
  %605 = load i32, i32* %7, align 4
  %606 = mul nsw i32 %605, 8
  %607 = load i32, i32* %8, align 4
  %608 = add nsw i32 %606, %607
  %609 = shl i32 1, %608
  %610 = load i32, i32* %13, align 4
  %611 = or i32 %610, %609
  store i32 %611, i32* %13, align 4
  br label %612

612:                                              ; preds = %591, %564
  %613 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %614 = load i32, i32* %6, align 4
  %615 = mul nsw i32 %614, 32
  %616 = add nsw i32 4220928, %615
  %617 = load i32, i32* %13, align 4
  %618 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %613, i32 %616, i32 %617)
  %619 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %620 = load i32, i32* %6, align 4
  %621 = mul nsw i32 %620, 32
  %622 = add nsw i32 4221952, %621
  %623 = load i32, i32* %13, align 4
  %624 = load i32, i32* %14, align 4
  %625 = xor i32 %623, %624
  %626 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %619, i32 %622, i32 %625)
  br label %627

627:                                              ; preds = %612
  %628 = load i32, i32* %6, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %6, align 4
  br label %561

630:                                              ; preds = %561
  store i32 0, i32* %6, align 4
  br label %631

631:                                              ; preds = %640, %630
  %632 = load i32, i32* %6, align 4
  %633 = icmp slt i32 %632, 8
  br i1 %633, label %634, label %643

634:                                              ; preds = %631
  %635 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %636 = load i32, i32* %6, align 4
  %637 = mul nsw i32 %636, 4
  %638 = add nsw i32 4220112, %637
  %639 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %635, i32 %638, i32 0)
  br label %640

640:                                              ; preds = %634
  %641 = load i32, i32* %6, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %6, align 4
  br label %631

643:                                              ; preds = %631
  %644 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %645 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %644, i32 4217600, i32 513)
  %646 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %647 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %646, i32 4229200, i32 2)
  %648 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %649 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %648, i32 4229464, i32 2)
  %650 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %651 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %650, i32 4300664, i32 10)
  %652 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %653 = call i32 @nve0_grctx_generate_icmd(%struct.nvc0_graph_priv* %652)
  %654 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %655 = call i32 @nve0_grctx_generate_a097(%struct.nvc0_graph_priv* %654)
  %656 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %657 = call i32 @nve0_grctx_generate_902d(%struct.nvc0_graph_priv* %656)
  %658 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %659 = call i32 @nv_mask(%struct.nvc0_graph_priv* %658, i32 608, i32 1, i32 1)
  %660 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %661 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %660, i32 4294656, i32 1881572874)
  %662 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %663 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %662, i32 4308496, i32 12291015)
  %664 = call i32 @nvc0_grctx_fini(%struct.nvc0_grctx* %4)
  store i32 %664, i32* %2, align 4
  store i32 1, i32* %23, align 4
  br label %665

665:                                              ; preds = %643, %39
  %666 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %666)
  %667 = load i32, i32* %2, align 4
  ret i32 %667
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nvc0_grctx_init(%struct.nvc0_graph_priv*, %struct.nvc0_grctx*) #3

declare dso_local i32 @nv_mask(%struct.nvc0_graph_priv*, i32, i32, i32) #3

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #3

declare dso_local i32 @nve0_graph_generate_unk40xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk44xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk46xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk47xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk58xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk60xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk64xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk70xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk78xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk80xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_unk88xx(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_gpc(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_tpc(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_graph_generate_tpcunk(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @mmio_data(i32, i32, i32) #3

declare dso_local i32 @mmio_list(i32, i32, i32, i32) #3

declare dso_local i32 @GPC_UNIT(i32, i32) #3

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #3

declare dso_local i32 @memcpy(i32*, i32*, i32) #3

declare dso_local i32 @nve0_grctx_generate_icmd(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_grctx_generate_a097(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nve0_grctx_generate_902d(%struct.nvc0_graph_priv*) #3

declare dso_local i32 @nvc0_grctx_fini(%struct.nvc0_grctx*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
