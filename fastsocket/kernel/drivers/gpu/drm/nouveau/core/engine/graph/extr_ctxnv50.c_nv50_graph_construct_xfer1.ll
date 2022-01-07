; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i32, i32, %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@CP_SET_XFER_POINTER = common dso_local global i32 0, align 4
@CP_SEEK_1 = common dso_local global i32 0, align 4
@CP_XFER_1 = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_xfer1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_xfer1(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %8 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %8, i32 0, i32 2
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  store %struct.nouveau_device* %10, %struct.nouveau_device** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %11, i32 0, i32 2
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %14 = call i32 @nv_rd32(%struct.nouveau_device* %13, i32 5440)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 63
  %19 = and i32 %18, -64
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 160
  br i1 %26, label %27, label %208

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @nv50_graph_construct_gene_dispatch(%struct.nouveau_grctx* %31)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @nv50_graph_construct_gene_m2mf(%struct.nouveau_grctx* %33)
  %35 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %36 = call i32 @nv50_graph_construct_gene_unk24xx(%struct.nouveau_grctx* %35)
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @nv50_graph_construct_gene_clipid(%struct.nouveau_grctx* %37)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @nv50_graph_construct_gene_zcull(%struct.nouveau_grctx* %39)
  %41 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %42 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sdiv i32 %45, 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sdiv i32 %54, 8
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %27
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %60 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %62 = call i32 @nv50_graph_construct_gene_vfetch(%struct.nouveau_grctx* %61)
  %63 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %64 = call i32 @nv50_graph_construct_gene_eng2d(%struct.nouveau_grctx* %63)
  %65 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %66 = call i32 @nv50_graph_construct_gene_csched(%struct.nouveau_grctx* %65)
  %67 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %68 = call i32 @nv50_graph_construct_gene_ropm1(%struct.nouveau_grctx* %67)
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @nv50_graph_construct_gene_ropm2(%struct.nouveau_grctx* %69)
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sdiv i32 %75, 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %56
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sdiv i32 %84, 8
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %79, %56
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 2
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @nv50_graph_construct_gene_ccache(%struct.nouveau_grctx* %91)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @nv50_graph_construct_gene_unk1cxx(%struct.nouveau_grctx* %93)
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @nv50_graph_construct_gene_strmout(%struct.nouveau_grctx* %95)
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = call i32 @nv50_graph_construct_gene_unk14xx(%struct.nouveau_grctx* %97)
  %99 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %100 = call i32 @nv50_graph_construct_gene_unk10xx(%struct.nouveau_grctx* %99)
  %101 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %102 = call i32 @nv50_graph_construct_gene_unk34xx(%struct.nouveau_grctx* %101)
  %103 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %104 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sdiv i32 %107, 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %86
  %112 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %113 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sdiv i32 %116, 8
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %111, %86
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 3
  %121 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %122 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %137, %118
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 6
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 16
  %130 = shl i32 1, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %135 = call i32 @nv50_graph_construct_gene_ropc(%struct.nouveau_grctx* %134)
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %123

140:                                              ; preds = %123
  %141 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %142 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sdiv i32 %145, 8
  %147 = load i32, i32* %6, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %151 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sdiv i32 %154, 8
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %149, %140
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %204, %156
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %207

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 4
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %166 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %4, align 4
  %169 = mul nsw i32 2, %168
  %170 = shl i32 1, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %160
  %174 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %175 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %174)
  br label %176

176:                                              ; preds = %173, %160
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %4, align 4
  %179 = mul nsw i32 2, %178
  %180 = add nsw i32 %179, 1
  %181 = shl i32 1, %180
  %182 = and i32 %177, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %186 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %185)
  br label %187

187:                                              ; preds = %184, %176
  %188 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %189 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sdiv i32 %192, 8
  %194 = load i32, i32* %6, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %187
  %197 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %198 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sub nsw i32 %199, %200
  %202 = sdiv i32 %201, 8
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %196, %187
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %157

207:                                              ; preds = %157
  br label %503

208:                                              ; preds = %1
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %211 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %213 = call i32 @nv50_graph_construct_gene_dispatch(%struct.nouveau_grctx* %212)
  %214 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %215 = call i32 @nv50_graph_construct_gene_m2mf(%struct.nouveau_grctx* %214)
  %216 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %217 = call i32 @nv50_graph_construct_gene_unk34xx(%struct.nouveau_grctx* %216)
  %218 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %219 = call i32 @nv50_graph_construct_gene_csched(%struct.nouveau_grctx* %218)
  %220 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %221 = call i32 @nv50_graph_construct_gene_unk1cxx(%struct.nouveau_grctx* %220)
  %222 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %223 = call i32 @nv50_graph_construct_gene_strmout(%struct.nouveau_grctx* %222)
  %224 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %225 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sub nsw i32 %226, %227
  %229 = sdiv i32 %228, 8
  %230 = load i32, i32* %6, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %208
  %233 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %234 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sdiv i32 %237, 8
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %232, %208
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  %242 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %243 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %245 = call i32 @nv50_graph_construct_gene_unk10xx(%struct.nouveau_grctx* %244)
  %246 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %247 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sub nsw i32 %248, %249
  %251 = sdiv i32 %250, 8
  %252 = load i32, i32* %6, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %239
  %255 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %256 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sub nsw i32 %257, %258
  %260 = sdiv i32 %259, 8
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %254, %239
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 2
  %264 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %265 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %267 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 160
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %272 = call i32 @nv50_graph_construct_gene_unk14xx(%struct.nouveau_grctx* %271)
  br label %273

273:                                              ; preds = %270, %261
  %274 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %275 = call i32 @nv50_graph_construct_gene_unk24xx(%struct.nouveau_grctx* %274)
  %276 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %277 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sdiv i32 %280, 8
  %282 = load i32, i32* %6, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %273
  %285 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %286 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sub nsw i32 %287, %288
  %290 = sdiv i32 %289, 8
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %284, %273
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, 3
  %294 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %295 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %297 = call i32 @nv50_graph_construct_gene_vfetch(%struct.nouveau_grctx* %296)
  %298 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %299 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sub nsw i32 %300, %301
  %303 = sdiv i32 %302, 8
  %304 = load i32, i32* %6, align 4
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %291
  %307 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %308 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sub nsw i32 %309, %310
  %312 = sdiv i32 %311, 8
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %306, %291
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 4
  %316 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %317 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %319 = call i32 @nv50_graph_construct_gene_ccache(%struct.nouveau_grctx* %318)
  %320 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %321 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sub nsw i32 %322, %323
  %325 = sdiv i32 %324, 8
  %326 = load i32, i32* %6, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %313
  %329 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %330 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %5, align 4
  %333 = sub nsw i32 %331, %332
  %334 = sdiv i32 %333, 8
  store i32 %334, i32* %6, align 4
  br label %335

335:                                              ; preds = %328, %313
  %336 = load i32, i32* %5, align 4
  %337 = add nsw i32 %336, 5
  %338 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %339 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 8
  %340 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %341 = call i32 @nv50_graph_construct_gene_ropm2(%struct.nouveau_grctx* %340)
  %342 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %343 = call i32 @nv50_graph_construct_gene_ropm1(%struct.nouveau_grctx* %342)
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %358, %335
  %345 = load i32, i32* %4, align 4
  %346 = icmp slt i32 %345, 8
  br i1 %346, label %347, label %361

347:                                              ; preds = %344
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, 16
  %351 = shl i32 1, %350
  %352 = and i32 %348, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %347
  %355 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %356 = call i32 @nv50_graph_construct_gene_ropc(%struct.nouveau_grctx* %355)
  br label %357

357:                                              ; preds = %354, %347
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %4, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %4, align 4
  br label %344

361:                                              ; preds = %344
  %362 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %363 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sub nsw i32 %364, %365
  %367 = sdiv i32 %366, 8
  %368 = load i32, i32* %6, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %361
  %371 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %372 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sub nsw i32 %373, %374
  %376 = sdiv i32 %375, 8
  store i32 %376, i32* %6, align 4
  br label %377

377:                                              ; preds = %370, %361
  %378 = load i32, i32* %5, align 4
  %379 = add nsw i32 %378, 6
  %380 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %381 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %383 = call i32 @nv50_graph_construct_gene_zcull(%struct.nouveau_grctx* %382)
  %384 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %385 = call i32 @nv50_graph_construct_gene_clipid(%struct.nouveau_grctx* %384)
  %386 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %387 = call i32 @nv50_graph_construct_gene_eng2d(%struct.nouveau_grctx* %386)
  %388 = load i32, i32* %7, align 4
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %377
  %392 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %393 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %392)
  br label %394

394:                                              ; preds = %391, %377
  %395 = load i32, i32* %7, align 4
  %396 = and i32 %395, 2
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %400 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %399)
  br label %401

401:                                              ; preds = %398, %394
  %402 = load i32, i32* %7, align 4
  %403 = and i32 %402, 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %401
  %406 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %407 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %406)
  br label %408

408:                                              ; preds = %405, %401
  %409 = load i32, i32* %7, align 4
  %410 = and i32 %409, 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %408
  %413 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %414 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %413)
  br label %415

415:                                              ; preds = %412, %408
  %416 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %417 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sub nsw i32 %418, %419
  %421 = sdiv i32 %420, 8
  %422 = load i32, i32* %6, align 4
  %423 = icmp sgt i32 %421, %422
  br i1 %423, label %424, label %431

424:                                              ; preds = %415
  %425 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %426 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = sub nsw i32 %427, %428
  %430 = sdiv i32 %429, 8
  store i32 %430, i32* %6, align 4
  br label %431

431:                                              ; preds = %424, %415
  %432 = load i32, i32* %5, align 4
  %433 = add nsw i32 %432, 7
  %434 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %435 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 8
  %436 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %437 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 160
  br i1 %439, label %440, label %483

440:                                              ; preds = %431
  %441 = load i32, i32* %7, align 4
  %442 = and i32 %441, 16
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %446 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %445)
  br label %447

447:                                              ; preds = %444, %440
  %448 = load i32, i32* %7, align 4
  %449 = and i32 %448, 32
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %447
  %452 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %453 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %452)
  br label %454

454:                                              ; preds = %451, %447
  %455 = load i32, i32* %7, align 4
  %456 = and i32 %455, 64
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %454
  %459 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %460 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %459)
  br label %461

461:                                              ; preds = %458, %454
  %462 = load i32, i32* %7, align 4
  %463 = and i32 %462, 128
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %461
  %466 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %467 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %466)
  br label %468

468:                                              ; preds = %465, %461
  %469 = load i32, i32* %7, align 4
  %470 = and i32 %469, 256
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %474 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %473)
  br label %475

475:                                              ; preds = %472, %468
  %476 = load i32, i32* %7, align 4
  %477 = and i32 %476, 512
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %475
  %480 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %481 = call i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx* %480)
  br label %482

482:                                              ; preds = %479, %475
  br label %486

483:                                              ; preds = %431
  %484 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %485 = call i32 @nv50_graph_construct_gene_unk14xx(%struct.nouveau_grctx* %484)
  br label %486

486:                                              ; preds = %483, %482
  %487 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %488 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* %5, align 4
  %491 = sub nsw i32 %489, %490
  %492 = sdiv i32 %491, 8
  %493 = load i32, i32* %6, align 4
  %494 = icmp sgt i32 %492, %493
  br i1 %494, label %495, label %502

495:                                              ; preds = %486
  %496 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %497 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %5, align 4
  %500 = sub nsw i32 %498, %499
  %501 = sdiv i32 %500, 8
  store i32 %501, i32* %6, align 4
  br label %502

502:                                              ; preds = %495, %486
  br label %503

503:                                              ; preds = %502, %207
  %504 = load i32, i32* %5, align 4
  %505 = load i32, i32* %6, align 4
  %506 = mul nsw i32 %505, 8
  %507 = add nsw i32 %504, %506
  %508 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %509 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %508, i32 0, i32 0
  store i32 %507, i32* %509, align 8
  %510 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %511 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = add nsw i32 %512, 63
  %514 = and i32 %513, -64
  %515 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %516 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %515, i32 0, i32 0
  store i32 %514, i32* %516, align 8
  %517 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %518 = load i32, i32* %5, align 4
  %519 = call i32 @cp_lsr(%struct.nouveau_grctx* %517, i32 %518)
  %520 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %521 = load i32, i32* @CP_SET_XFER_POINTER, align 4
  %522 = call i32 @cp_out(%struct.nouveau_grctx* %520, i32 %521)
  %523 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %524 = load i32, i32* %6, align 4
  %525 = call i32 @cp_lsr(%struct.nouveau_grctx* %523, i32 %524)
  %526 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %527 = load i32, i32* @CP_SEEK_1, align 4
  %528 = call i32 @cp_out(%struct.nouveau_grctx* %526, i32 %527)
  %529 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %530 = load i32, i32* @CP_XFER_1, align 4
  %531 = call i32 @cp_out(%struct.nouveau_grctx* %529, i32 %530)
  %532 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %533 = load i32, i32* @XFER, align 4
  %534 = load i32, i32* @BUSY, align 4
  %535 = call i32 @cp_wait(%struct.nouveau_grctx* %532, i32 %533, i32 %534)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv50_graph_construct_gene_dispatch(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_m2mf(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_unk24xx(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_clipid(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_zcull(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_vfetch(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_eng2d(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_csched(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_ropm1(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_ropm2(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_ccache(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_unk1cxx(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_strmout(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_unk14xx(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_unk10xx(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_unk34xx(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_gene_ropc(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_xfer_tp(%struct.nouveau_grctx*) #1

declare dso_local i32 @cp_lsr(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
