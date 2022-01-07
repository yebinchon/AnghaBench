; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_mmio(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %9 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %10 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %9, i32 0, i32 0
  %11 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  store %struct.nouveau_device* %11, %struct.nouveau_device** %3, align 8
  %12 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %13 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %12, i32 0, i32 0
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %13, align 8
  %15 = call i32 @nv_rd32(%struct.nouveau_device* %14, i32 5440)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %17 = call i32 @cp_ctx(%struct.nouveau_grctx* %16, i32 4196360, i32 7)
  %18 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %19 = call i32 @gr_def(%struct.nouveau_grctx* %18, i32 4196372, i32 48)
  %20 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %21 = call i32 @cp_ctx(%struct.nouveau_grctx* %20, i32 4196404, i32 50)
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 80
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @gr_def(%struct.nouveau_grctx* %27, i32 4196404, i32 -12582848)
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = call i32 @gr_def(%struct.nouveau_grctx* %29, i32 4196408, i32 -1048448)
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @gr_def(%struct.nouveau_grctx* %31, i32 4196412, i32 -589680)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @gr_def(%struct.nouveau_grctx* %33, i32 4196416, i32 -1571160)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %37 = call i32 @gr_def(%struct.nouveau_grctx* %36, i32 4196420, i32 2)
  %38 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %39 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_NVA3F(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %45 = call i32 @gr_def(%struct.nouveau_grctx* %44, i32 4196500, i32 4096)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %48 = call i32 @gr_def(%struct.nouveau_grctx* %47, i32 4196584, i32 3)
  %49 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %50 = call i32 @gr_def(%struct.nouveau_grctx* %49, i32 4196588, i32 4096)
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 80
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %57 = call i32 @cp_ctx(%struct.nouveau_grctx* %56, i32 4196616, i32 11)
  br label %70

58:                                               ; preds = %46
  %59 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 160
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @cp_ctx(%struct.nouveau_grctx* %64, i32 4196616, i32 12)
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %68 = call i32 @cp_ctx(%struct.nouveau_grctx* %67, i32 4196616, i32 14)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 160
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %77 = call i32 @cp_ctx(%struct.nouveau_grctx* %76, i32 4197120, i32 1)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %80 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_NVA3F(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @cp_ctx(%struct.nouveau_grctx* %85, i32 4197136, i32 1)
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @gr_def(%struct.nouveau_grctx* %87, i32 4197136, i32 90781)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @cp_ctx(%struct.nouveau_grctx* %89, i32 4197152, i32 1)
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @gr_def(%struct.nouveau_grctx* %91, i32 4197152, i32 90781)
  br label %93

93:                                               ; preds = %84, %78
  %94 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %95 = call i32 @nv50_graph_construct_mmio_ddata(%struct.nouveau_grctx* %94)
  %96 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %97 = call i32 @cp_ctx(%struct.nouveau_grctx* %96, i32 4197384, i32 2)
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = call i32 @gr_def(%struct.nouveau_grctx* %98, i32 4197384, i32 65036)
  %100 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %101 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 160
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %106 = call i32 @cp_ctx(%struct.nouveau_grctx* %105, i32 4198408, i32 4)
  %107 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %108 = call i32 @gr_def(%struct.nouveau_grctx* %107, i32 4198420, i32 4096)
  br label %126

109:                                              ; preds = %93
  %110 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %111 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IS_NVA3F(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %117 = call i32 @cp_ctx(%struct.nouveau_grctx* %116, i32 4198408, i32 5)
  %118 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %119 = call i32 @gr_def(%struct.nouveau_grctx* %118, i32 4198424, i32 4096)
  br label %125

120:                                              ; preds = %109
  %121 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %122 = call i32 @cp_ctx(%struct.nouveau_grctx* %121, i32 4198408, i32 5)
  %123 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %124 = call i32 @gr_def(%struct.nouveau_grctx* %123, i32 4198424, i32 16384)
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %104
  %127 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %128 = call i32 @cp_ctx(%struct.nouveau_grctx* %127, i32 4199424, i32 8)
  %129 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %130 = call i32 @cp_ctx(%struct.nouveau_grctx* %129, i32 4199460, i32 3)
  %131 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %132 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 80
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %137 = call i32 @gr_def(%struct.nouveau_grctx* %136, i32 4199468, i32 130439)
  br label %141

138:                                              ; preds = %126
  %139 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %140 = call i32 @gr_def(%struct.nouveau_grctx* %139, i32 4199468, i32 391)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %143 = call i32 @cp_ctx(%struct.nouveau_grctx* %142, i32 4199744, i32 5)
  %144 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %145 = call i32 @gr_def(%struct.nouveau_grctx* %144, i32 4199760, i32 4120)
  %146 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %147 = call i32 @cp_ctx(%struct.nouveau_grctx* %146, i32 4200468, i32 1)
  %148 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %149 = call i32 @gr_def(%struct.nouveau_grctx* %148, i32 4200468, i32 255)
  %150 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %151 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 80
  br i1 %153, label %154, label %159

154:                                              ; preds = %141
  %155 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %156 = call i32 @cp_ctx(%struct.nouveau_grctx* %155, i32 4200476, i32 14)
  %157 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %158 = call i32 @gr_def(%struct.nouveau_grctx* %157, i32 4200528, i32 4)
  br label %175

159:                                              ; preds = %141
  %160 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %161 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 160
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %166 = call i32 @cp_ctx(%struct.nouveau_grctx* %165, i32 4200476, i32 15)
  %167 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %168 = call i32 @gr_def(%struct.nouveau_grctx* %167, i32 4200532, i32 4)
  br label %174

169:                                              ; preds = %159
  %170 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %171 = call i32 @cp_ctx(%struct.nouveau_grctx* %170, i32 4200476, i32 19)
  %172 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %173 = call i32 @gr_def(%struct.nouveau_grctx* %172, i32 4200548, i32 4)
  br label %174

174:                                              ; preds = %169, %164
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %177 = call i32 @cp_ctx(%struct.nouveau_grctx* %176, i32 4201472, i32 1)
  %178 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %179 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %193 [
    i32 80, label %181
    i32 132, label %184
    i32 134, label %184
    i32 148, label %184
    i32 146, label %187
    i32 150, label %187
    i32 152, label %187
    i32 160, label %187
    i32 170, label %187
    i32 172, label %187
    i32 163, label %190
    i32 165, label %190
    i32 168, label %190
    i32 175, label %190
  ]

181:                                              ; preds = %175
  %182 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %183 = call i32 @gr_def(%struct.nouveau_grctx* %182, i32 4201472, i32 65631)
  br label %193

184:                                              ; preds = %175, %175, %175
  %185 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %186 = call i32 @gr_def(%struct.nouveau_grctx* %185, i32 4201472, i32 72155359)
  br label %193

187:                                              ; preds = %175, %175, %175, %175, %175, %175
  %188 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %189 = call i32 @gr_def(%struct.nouveau_grctx* %188, i32 4201472, i32 69533919)
  br label %193

190:                                              ; preds = %175, %175, %175, %175
  %191 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %192 = call i32 @gr_def(%struct.nouveau_grctx* %191, i32 4201472, i32 337969375)
  br label %193

193:                                              ; preds = %175, %190, %187, %184, %181
  %194 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %195 = call i32 @cp_ctx(%struct.nouveau_grctx* %194, i32 4203520, i32 1)
  %196 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %197 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 80
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %202 = call i32 @cp_ctx(%struct.nouveau_grctx* %201, i32 4203528, i32 1)
  br label %206

203:                                              ; preds = %193
  %204 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %205 = call i32 @cp_ctx(%struct.nouveau_grctx* %204, i32 4203528, i32 2)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %208 = call i32 @gr_def(%struct.nouveau_grctx* %207, i32 4203528, i32 1536)
  %209 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %210 = call i32 @cp_ctx(%struct.nouveau_grctx* %209, i32 4204544, i32 1)
  %211 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %212 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 80
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %217 = call i32 @gr_def(%struct.nouveau_grctx* %216, i32 4204544, i32 6)
  br label %218

218:                                              ; preds = %215, %206
  %219 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %220 = call i32 @cp_ctx(%struct.nouveau_grctx* %219, i32 4205576, i32 6)
  %221 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %222 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 80
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %227 = call i32 @gr_def(%struct.nouveau_grctx* %226, i32 4205588, i32 16777216)
  br label %228

228:                                              ; preds = %225, %218
  %229 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %230 = call i32 @gr_def(%struct.nouveau_grctx* %229, i32 4205592, i32 255)
  %231 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %232 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 80
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %237 = call i32 @cp_ctx(%struct.nouveau_grctx* %236, i32 4205728, i32 1)
  br label %241

238:                                              ; preds = %228
  %239 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %240 = call i32 @cp_ctx(%struct.nouveau_grctx* %239, i32 4205728, i32 2)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %243 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %244, 160
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %248 = call i32 @gr_def(%struct.nouveau_grctx* %247, i32 4205728, i32 1024)
  br label %262

249:                                              ; preds = %241
  %250 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %251 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @IS_NVA3F(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %257 = call i32 @gr_def(%struct.nouveau_grctx* %256, i32 4205728, i32 2048)
  br label %261

258:                                              ; preds = %249
  %259 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %260 = call i32 @gr_def(%struct.nouveau_grctx* %259, i32 4205728, i32 1024)
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %246
  %263 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %264 = call i32 @cp_ctx(%struct.nouveau_grctx* %263, i32 4205740, i32 4)
  %265 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %266 = call i32 @cp_ctx(%struct.nouveau_grctx* %265, i32 4206596, i32 1)
  %267 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %268 = call i32 @gr_def(%struct.nouveau_grctx* %267, i32 4206596, i32 1)
  %269 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %270 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp sge i32 %271, 160
  br i1 %272, label %273, label %278

273:                                              ; preds = %262
  %274 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %275 = call i32 @cp_ctx(%struct.nouveau_grctx* %274, i32 4207620, i32 1)
  %276 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %277 = call i32 @gr_def(%struct.nouveau_grctx* %276, i32 4207620, i32 1)
  br label %278

278:                                              ; preds = %273, %262
  %279 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %280 = call i32 @cp_ctx(%struct.nouveau_grctx* %279, i32 4214784, i32 1)
  %281 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %282 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  switch i32 %283, label %293 [
    i32 80, label %284
    i32 132, label %287
    i32 160, label %287
    i32 163, label %287
    i32 165, label %287
    i32 168, label %287
    i32 170, label %287
    i32 172, label %287
    i32 175, label %287
    i32 134, label %290
    i32 146, label %290
    i32 148, label %290
    i32 150, label %290
    i32 152, label %290
  ]

284:                                              ; preds = %278
  %285 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %286 = call i32 @gr_def(%struct.nouveau_grctx* %285, i32 4214784, i32 3145856)
  br label %293

287:                                              ; preds = %278, %278, %278, %278, %278, %278, %278, %278
  %288 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %289 = call i32 @gr_def(%struct.nouveau_grctx* %288, i32 4214784, i32 917632)
  br label %293

290:                                              ; preds = %278, %278, %278, %278, %278
  %291 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %292 = call i32 @gr_def(%struct.nouveau_grctx* %291, i32 4214784, i32 128)
  br label %293

293:                                              ; preds = %278, %290, %287, %284
  %294 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %295 = call i32 @cp_ctx(%struct.nouveau_grctx* %294, i32 4214804, i32 1)
  %296 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %297 = call i32 @gr_def(%struct.nouveau_grctx* %296, i32 4214804, i32 4)
  %298 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %299 = call i32 @cp_ctx(%struct.nouveau_grctx* %298, i32 4214812, i32 1)
  %300 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %301 = call i32 @cp_ctx(%struct.nouveau_grctx* %300, i32 4214820, i32 1)
  %302 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %303 = call i32 @cp_ctx(%struct.nouveau_grctx* %302, i32 4214828, i32 1)
  %304 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %305 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 80
  br i1 %307, label %308, label %311

308:                                              ; preds = %293
  %309 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %310 = call i32 @cp_ctx(%struct.nouveau_grctx* %309, i32 4219872, i32 1)
  br label %311

311:                                              ; preds = %308, %293
  %312 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %313 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %314, 144
  br i1 %315, label %316, label %325

316:                                              ; preds = %311
  %317 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %318 = call i32 @cp_ctx(%struct.nouveau_grctx* %317, i32 4220948, i32 43)
  %319 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %320 = call i32 @gr_def(%struct.nouveau_grctx* %319, i32 4220952, i32 3968)
  %321 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %322 = call i32 @gr_def(%struct.nouveau_grctx* %321, i32 4221024, i32 8323200)
  %323 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %324 = call i32 @gr_def(%struct.nouveau_grctx* %323, i32 4221084, i32 8323200)
  br label %350

325:                                              ; preds = %311
  %326 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %327 = call i32 @cp_ctx(%struct.nouveau_grctx* %326, i32 4220948, i32 4)
  %328 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %329 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 152
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %334 = call i32 @gr_def(%struct.nouveau_grctx* %333, i32 4220952, i32 3968)
  br label %338

335:                                              ; preds = %325
  %336 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %337 = call i32 @gr_def(%struct.nouveau_grctx* %336, i32 4220952, i32 8064)
  br label %338

338:                                              ; preds = %335, %332
  %339 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %340 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @IS_NVA3F(i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %338
  %345 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %346 = call i32 @gr_def(%struct.nouveau_grctx* %345, i32 4220956, i32 48)
  br label %347

347:                                              ; preds = %344, %338
  %348 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %349 = call i32 @cp_ctx(%struct.nouveau_grctx* %348, i32 4220976, i32 3)
  br label %350

350:                                              ; preds = %347, %316
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %542, %350
  %352 = load i32, i32* %4, align 4
  %353 = icmp slt i32 %352, 8
  br i1 %353, label %354, label %545

354:                                              ; preds = %351
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 16
  %358 = shl i32 1, %357
  %359 = and i32 %355, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %541

361:                                              ; preds = %354
  %362 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %363 = load i32, i32* %4, align 4
  %364 = shl i32 %363, 8
  %365 = add nsw i32 4222976, %364
  %366 = call i32 @cp_ctx(%struct.nouveau_grctx* %362, i32 %365, i32 3)
  %367 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %368 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = icmp eq i32 %369, 80
  br i1 %370, label %371, label %377

371:                                              ; preds = %361
  %372 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %373 = load i32, i32* %4, align 4
  %374 = shl i32 %373, 8
  %375 = add nsw i32 4222976, %374
  %376 = call i32 @gr_def(%struct.nouveau_grctx* %372, i32 %375, i32 460650528)
  br label %395

377:                                              ; preds = %361
  %378 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %379 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 165
  br i1 %381, label %382, label %388

382:                                              ; preds = %377
  %383 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %384 = load i32, i32* %4, align 4
  %385 = shl i32 %384, 8
  %386 = add nsw i32 4222976, %385
  %387 = call i32 @gr_def(%struct.nouveau_grctx* %383, i32 %386, i32 997521441)
  br label %394

388:                                              ; preds = %377
  %389 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %390 = load i32, i32* %4, align 4
  %391 = shl i32 %390, 8
  %392 = add nsw i32 4222976, %391
  %393 = call i32 @gr_def(%struct.nouveau_grctx* %389, i32 %392, i32 2071263265)
  br label %394

394:                                              ; preds = %388, %382
  br label %395

395:                                              ; preds = %394, %371
  %396 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %397 = load i32, i32* %4, align 4
  %398 = shl i32 %397, 8
  %399 = add nsw i32 4222980, %398
  %400 = call i32 @gr_def(%struct.nouveau_grctx* %396, i32 %399, i32 -1996128255)
  %401 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %402 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 80
  br i1 %404, label %405, label %411

405:                                              ; preds = %395
  %406 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %407 = load i32, i32* %4, align 4
  %408 = shl i32 %407, 8
  %409 = add nsw i32 4222992, %408
  %410 = call i32 @cp_ctx(%struct.nouveau_grctx* %406, i32 %409, i32 1)
  br label %461

411:                                              ; preds = %395
  %412 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %413 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp slt i32 %414, 160
  br i1 %415, label %416, label %432

416:                                              ; preds = %411
  %417 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %418 = load i32, i32* %4, align 4
  %419 = shl i32 %418, 8
  %420 = add nsw i32 4222992, %419
  %421 = call i32 @cp_ctx(%struct.nouveau_grctx* %417, i32 %420, i32 2)
  %422 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %423 = load i32, i32* %4, align 4
  %424 = shl i32 %423, 8
  %425 = add nsw i32 4222992, %424
  %426 = call i32 @gr_def(%struct.nouveau_grctx* %422, i32 %425, i32 4096)
  %427 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %428 = load i32, i32* %4, align 4
  %429 = shl i32 %428, 8
  %430 = add nsw i32 4222996, %429
  %431 = call i32 @gr_def(%struct.nouveau_grctx* %427, i32 %430, i32 31)
  br label %460

432:                                              ; preds = %411
  %433 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %434 = load i32, i32* %4, align 4
  %435 = shl i32 %434, 8
  %436 = add nsw i32 4222992, %435
  %437 = call i32 @cp_ctx(%struct.nouveau_grctx* %433, i32 %436, i32 3)
  %438 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %439 = load i32, i32* %4, align 4
  %440 = shl i32 %439, 8
  %441 = add nsw i32 4222992, %440
  %442 = call i32 @gr_def(%struct.nouveau_grctx* %438, i32 %441, i32 4096)
  %443 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %444 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 165
  br i1 %446, label %447, label %453

447:                                              ; preds = %432
  %448 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %449 = load i32, i32* %4, align 4
  %450 = shl i32 %449, 8
  %451 = add nsw i32 4222996, %450
  %452 = call i32 @gr_def(%struct.nouveau_grctx* %448, i32 %451, i32 255)
  br label %459

453:                                              ; preds = %432
  %454 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %455 = load i32, i32* %4, align 4
  %456 = shl i32 %455, 8
  %457 = add nsw i32 4222996, %456
  %458 = call i32 @gr_def(%struct.nouveau_grctx* %454, i32 %457, i32 511)
  br label %459

459:                                              ; preds = %453, %447
  br label %460

460:                                              ; preds = %459, %416
  br label %461

461:                                              ; preds = %460, %405
  %462 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %463 = load i32, i32* %4, align 4
  %464 = shl i32 %463, 8
  %465 = add nsw i32 4223104, %464
  %466 = call i32 @cp_ctx(%struct.nouveau_grctx* %462, i32 %465, i32 4)
  %467 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %468 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = icmp ne i32 %469, 165
  br i1 %470, label %471, label %477

471:                                              ; preds = %461
  %472 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %473 = load i32, i32* %4, align 4
  %474 = shl i32 %473, 8
  %475 = add nsw i32 4223104, %474
  %476 = call i32 @gr_def(%struct.nouveau_grctx* %472, i32 %475, i32 41685242)
  br label %483

477:                                              ; preds = %461
  %478 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %479 = load i32, i32* %4, align 4
  %480 = shl i32 %479, 8
  %481 = add nsw i32 4223104, %480
  %482 = call i32 @gr_def(%struct.nouveau_grctx* %478, i32 %481, i32 -2105798406)
  br label %483

483:                                              ; preds = %477, %471
  %484 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %485 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 80
  br i1 %487, label %488, label %494

488:                                              ; preds = %483
  %489 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %490 = load i32, i32* %4, align 4
  %491 = shl i32 %490, 8
  %492 = add nsw i32 4223108, %491
  %493 = call i32 @gr_def(%struct.nouveau_grctx* %489, i32 %492, i32 192)
  br label %500

494:                                              ; preds = %483
  %495 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %496 = load i32, i32* %4, align 4
  %497 = shl i32 %496, 8
  %498 = add nsw i32 4223108, %497
  %499 = call i32 @gr_def(%struct.nouveau_grctx* %495, i32 %498, i32 1073742016)
  br label %500

500:                                              ; preds = %494, %488
  %501 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %502 = load i32, i32* %4, align 4
  %503 = shl i32 %502, 8
  %504 = add nsw i32 4223112, %503
  %505 = call i32 @gr_def(%struct.nouveau_grctx* %501, i32 %504, i32 -1215750016)
  %506 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %507 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = icmp slt i32 %508, 160
  br i1 %509, label %510, label %516

510:                                              ; preds = %500
  %511 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %512 = load i32, i32* %4, align 4
  %513 = shl i32 %512, 8
  %514 = add nsw i32 4223124, %513
  %515 = call i32 @cp_ctx(%struct.nouveau_grctx* %511, i32 %514, i32 1)
  br label %540

516:                                              ; preds = %500
  %517 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %518 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = call i64 @IS_NVA3F(i32 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %528, label %522

522:                                              ; preds = %516
  %523 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %524 = load i32, i32* %4, align 4
  %525 = shl i32 %524, 8
  %526 = add nsw i32 4223124, %525
  %527 = call i32 @cp_ctx(%struct.nouveau_grctx* %523, i32 %526, i32 3)
  br label %539

528:                                              ; preds = %516
  %529 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %530 = load i32, i32* %4, align 4
  %531 = shl i32 %530, 8
  %532 = add nsw i32 4223124, %531
  %533 = call i32 @cp_ctx(%struct.nouveau_grctx* %529, i32 %532, i32 4)
  %534 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %535 = load i32, i32* %4, align 4
  %536 = shl i32 %535, 8
  %537 = add nsw i32 4223136, %536
  %538 = call i32 @gr_def(%struct.nouveau_grctx* %534, i32 %537, i32 1)
  br label %539

539:                                              ; preds = %528, %522
  br label %540

540:                                              ; preds = %539, %510
  br label %541

541:                                              ; preds = %540, %354
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %4, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %4, align 4
  br label %351

545:                                              ; preds = %351
  %546 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %547 = call i32 @cp_ctx(%struct.nouveau_grctx* %546, i32 4226048, i32 3)
  %548 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %549 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 4
  %551 = icmp slt i32 %550, 144
  br i1 %551, label %552, label %555

552:                                              ; preds = %545
  %553 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %554 = call i32 @gr_def(%struct.nouveau_grctx* %553, i32 4226048, i32 65600)
  br label %567

555:                                              ; preds = %545
  %556 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %557 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = icmp slt i32 %558, 160
  br i1 %559, label %560, label %563

560:                                              ; preds = %555
  %561 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %562 = call i32 @gr_def(%struct.nouveau_grctx* %561, i32 4226048, i32 3735616)
  br label %566

563:                                              ; preds = %555
  %564 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %565 = call i32 @gr_def(%struct.nouveau_grctx* %564, i32 4226048, i32 3997760)
  br label %566

566:                                              ; preds = %563, %560
  br label %567

567:                                              ; preds = %566, %552
  %568 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %569 = call i32 @gr_def(%struct.nouveau_grctx* %568, i32 4226056, i32 34)
  %570 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %571 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = icmp sge i32 %572, 160
  br i1 %573, label %574, label %581

574:                                              ; preds = %567
  %575 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %576 = call i32 @cp_ctx(%struct.nouveau_grctx* %575, i32 4226064, i32 3)
  %577 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %578 = call i32 @cp_ctx(%struct.nouveau_grctx* %577, i32 4226080, i32 1)
  %579 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %580 = call i32 @cp_ctx(%struct.nouveau_grctx* %579, i32 4226092, i32 1)
  br label %581

581:                                              ; preds = %574, %567
  %582 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %583 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = icmp slt i32 %584, 160
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %588 = call i32 @cp_ctx(%struct.nouveau_grctx* %587, i32 4226304, i32 9)
  br label %592

589:                                              ; preds = %581
  %590 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %591 = call i32 @cp_ctx(%struct.nouveau_grctx* %590, i32 4226304, i32 21)
  br label %592

592:                                              ; preds = %589, %586
  %593 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %594 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = icmp eq i32 %595, 152
  br i1 %596, label %597, label %600

597:                                              ; preds = %592
  %598 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %599 = call i32 @gr_def(%struct.nouveau_grctx* %598, i32 4226312, i32 3670080)
  br label %623

600:                                              ; preds = %592
  %601 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %602 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = icmp slt i32 %603, 144
  br i1 %604, label %605, label %608

605:                                              ; preds = %600
  %606 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %607 = call i32 @gr_def(%struct.nouveau_grctx* %606, i32 4226312, i32 65600)
  br label %620

608:                                              ; preds = %600
  %609 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %610 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = icmp slt i32 %611, 160
  br i1 %612, label %613, label %616

613:                                              ; preds = %608
  %614 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %615 = call i32 @gr_def(%struct.nouveau_grctx* %614, i32 4226312, i32 3735616)
  br label %619

616:                                              ; preds = %608
  %617 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %618 = call i32 @gr_def(%struct.nouveau_grctx* %617, i32 4226312, i32 3997760)
  br label %619

619:                                              ; preds = %616, %613
  br label %620

620:                                              ; preds = %619, %605
  %621 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %622 = call i32 @gr_def(%struct.nouveau_grctx* %621, i32 4226316, i32 34)
  br label %623

623:                                              ; preds = %620, %597
  store i32 0, i32* %4, align 4
  br label %624

624:                                              ; preds = %1284, %623
  %625 = load i32, i32* %4, align 4
  %626 = icmp slt i32 %625, 10
  br i1 %626, label %627, label %1287

627:                                              ; preds = %624
  %628 = load i32, i32* %8, align 4
  %629 = load i32, i32* %4, align 4
  %630 = shl i32 1, %629
  %631 = and i32 %628, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %1283

633:                                              ; preds = %627
  %634 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %635 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = icmp slt i32 %636, 160
  br i1 %637, label %638, label %642

638:                                              ; preds = %633
  %639 = load i32, i32* %4, align 4
  %640 = shl i32 %639, 12
  %641 = add nsw i32 4227072, %640
  store i32 %641, i32* %7, align 4
  br label %646

642:                                              ; preds = %633
  %643 = load i32, i32* %4, align 4
  %644 = shl i32 %643, 11
  %645 = add nsw i32 4227072, %644
  store i32 %645, i32* %7, align 4
  br label %646

646:                                              ; preds = %642, %638
  %647 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %648 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 4
  %650 = icmp slt i32 %649, 160
  br i1 %650, label %651, label %654

651:                                              ; preds = %646
  %652 = load i32, i32* %7, align 4
  %653 = add nsw i32 %652, 3072
  store i32 %653, i32* %6, align 4
  br label %657

654:                                              ; preds = %646
  %655 = load i32, i32* %7, align 4
  %656 = add nsw i32 %655, 128
  store i32 %656, i32* %6, align 4
  br label %657

657:                                              ; preds = %654, %651
  %658 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %659 = load i32, i32* %6, align 4
  %660 = add nsw i32 %659, 0
  %661 = call i32 @cp_ctx(%struct.nouveau_grctx* %658, i32 %660, i32 1)
  %662 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %663 = load i32, i32* %6, align 4
  %664 = add nsw i32 %663, 0
  %665 = call i32 @gr_def(%struct.nouveau_grctx* %662, i32 %664, i32 65290)
  %666 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %667 = load i32, i32* %6, align 4
  %668 = add nsw i32 %667, 8
  %669 = call i32 @cp_ctx(%struct.nouveau_grctx* %666, i32 %668, i32 1)
  store i32 0, i32* %5, align 4
  br label %670

670:                                              ; preds = %815, %657
  %671 = load i32, i32* %5, align 4
  %672 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %673 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 4
  %675 = icmp slt i32 %674, 160
  %676 = zext i1 %675 to i64
  %677 = select i1 %675, i32 2, i32 4
  %678 = icmp slt i32 %671, %677
  br i1 %678, label %679, label %818

679:                                              ; preds = %670
  %680 = load i32, i32* %8, align 4
  %681 = load i32, i32* %5, align 4
  %682 = add nsw i32 %681, 24
  %683 = shl i32 1, %682
  %684 = and i32 %680, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %679
  br label %815

687:                                              ; preds = %679
  %688 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %689 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 4
  %691 = icmp slt i32 %690, 160
  br i1 %691, label %692, label %698

692:                                              ; preds = %687
  %693 = load i32, i32* %7, align 4
  %694 = add nsw i32 %693, 512
  %695 = load i32, i32* %5, align 4
  %696 = shl i32 %695, 7
  %697 = add nsw i32 %694, %696
  store i32 %697, i32* %6, align 4
  br label %704

698:                                              ; preds = %687
  %699 = load i32, i32* %7, align 4
  %700 = add nsw i32 %699, 256
  %701 = load i32, i32* %5, align 4
  %702 = shl i32 %701, 7
  %703 = add nsw i32 %700, %702
  store i32 %703, i32* %6, align 4
  br label %704

704:                                              ; preds = %698, %692
  %705 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %706 = load i32, i32* %6, align 4
  %707 = call i32 @cp_ctx(%struct.nouveau_grctx* %705, i32 %706, i32 32)
  %708 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %709 = load i32, i32* %6, align 4
  %710 = add nsw i32 %709, 0
  %711 = call i32 @gr_def(%struct.nouveau_grctx* %708, i32 %710, i32 25165824)
  %712 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %713 = load i32, i32* %6, align 4
  %714 = add nsw i32 %713, 4
  %715 = call i32 @gr_def(%struct.nouveau_grctx* %712, i32 %714, i32 1441792)
  %716 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %717 = load i32, i32* %6, align 4
  %718 = add nsw i32 %717, 8
  %719 = call i32 @gr_def(%struct.nouveau_grctx* %716, i32 %718, i32 25165824)
  %720 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %721 = load i32, i32* %6, align 4
  %722 = add nsw i32 %721, 24
  %723 = call i32 @gr_def(%struct.nouveau_grctx* %720, i32 %722, i32 262143)
  %724 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %725 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  switch i32 %726, label %762 [
    i32 80, label %727
    i32 132, label %732
    i32 134, label %737
    i32 146, label %742
    i32 150, label %742
    i32 152, label %742
    i32 148, label %747
    i32 160, label %752
    i32 165, label %752
    i32 163, label %757
    i32 168, label %757
    i32 170, label %757
    i32 172, label %757
    i32 175, label %757
  ]

727:                                              ; preds = %704
  %728 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %729 = load i32, i32* %6, align 4
  %730 = add nsw i32 %729, 28
  %731 = call i32 @gr_def(%struct.nouveau_grctx* %728, i32 %730, i32 524288)
  br label %762

732:                                              ; preds = %704
  %733 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %734 = load i32, i32* %6, align 4
  %735 = add nsw i32 %734, 28
  %736 = call i32 @gr_def(%struct.nouveau_grctx* %733, i32 %735, i32 8912896)
  br label %762

737:                                              ; preds = %704
  %738 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %739 = load i32, i32* %6, align 4
  %740 = add nsw i32 %739, 28
  %741 = call i32 @gr_def(%struct.nouveau_grctx* %738, i32 %740, i32 25952256)
  br label %762

742:                                              ; preds = %704, %704, %704
  %743 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %744 = load i32, i32* %6, align 4
  %745 = add nsw i32 %744, 28
  %746 = call i32 @gr_def(%struct.nouveau_grctx* %743, i32 %745, i32 294387712)
  br label %762

747:                                              ; preds = %704
  %748 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %749 = load i32, i32* %6, align 4
  %750 = add nsw i32 %749, 28
  %751 = call i32 @gr_def(%struct.nouveau_grctx* %748, i32 %750, i32 277348352)
  br label %762

752:                                              ; preds = %704, %704
  %753 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %754 = load i32, i32* %6, align 4
  %755 = add nsw i32 %754, 28
  %756 = call i32 @gr_def(%struct.nouveau_grctx* %753, i32 %755, i32 822870016)
  br label %762

757:                                              ; preds = %704, %704, %704, %704, %704
  %758 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %759 = load i32, i32* %6, align 4
  %760 = add nsw i32 %759, 28
  %761 = call i32 @gr_def(%struct.nouveau_grctx* %758, i32 %760, i32 806092800)
  br label %762

762:                                              ; preds = %704, %757, %752, %747, %742, %737, %732, %727
  %763 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %764 = load i32, i32* %6, align 4
  %765 = add nsw i32 %764, 64
  %766 = call i32 @gr_def(%struct.nouveau_grctx* %763, i32 %765, i32 66561)
  %767 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %768 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = icmp eq i32 %769, 80
  br i1 %770, label %771, label %776

771:                                              ; preds = %762
  %772 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %773 = load i32, i32* %6, align 4
  %774 = add nsw i32 %773, 72
  %775 = call i32 @gr_def(%struct.nouveau_grctx* %772, i32 %774, i32 64)
  br label %781

776:                                              ; preds = %762
  %777 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %778 = load i32, i32* %6, align 4
  %779 = add nsw i32 %778, 72
  %780 = call i32 @gr_def(%struct.nouveau_grctx* %777, i32 %779, i32 120)
  br label %781

781:                                              ; preds = %776, %771
  %782 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %783 = load i32, i32* %6, align 4
  %784 = add nsw i32 %783, 80
  %785 = call i32 @gr_def(%struct.nouveau_grctx* %782, i32 %784, i32 191)
  %786 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %787 = load i32, i32* %6, align 4
  %788 = add nsw i32 %787, 88
  %789 = call i32 @gr_def(%struct.nouveau_grctx* %786, i32 %788, i32 4624)
  %790 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %791 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  %793 = icmp eq i32 %792, 80
  br i1 %793, label %794, label %799

794:                                              ; preds = %781
  %795 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %796 = load i32, i32* %6, align 4
  %797 = add nsw i32 %796, 92
  %798 = call i32 @gr_def(%struct.nouveau_grctx* %795, i32 %797, i32 128)
  br label %804

799:                                              ; preds = %781
  %800 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %801 = load i32, i32* %6, align 4
  %802 = add nsw i32 %801, 92
  %803 = call i32 @gr_def(%struct.nouveau_grctx* %800, i32 %802, i32 134217856)
  br label %804

804:                                              ; preds = %799, %794
  %805 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %806 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 4
  %808 = icmp sge i32 %807, 160
  br i1 %808, label %809, label %814

809:                                              ; preds = %804
  %810 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %811 = load i32, i32* %6, align 4
  %812 = add nsw i32 %811, 104
  %813 = call i32 @gr_def(%struct.nouveau_grctx* %810, i32 %812, i32 62)
  br label %814

814:                                              ; preds = %809, %804
  br label %815

815:                                              ; preds = %814, %686
  %816 = load i32, i32* %5, align 4
  %817 = add nsw i32 %816, 1
  store i32 %817, i32* %5, align 4
  br label %670

818:                                              ; preds = %670
  %819 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %820 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %819, i32 0, i32 0
  %821 = load i32, i32* %820, align 4
  %822 = icmp slt i32 %821, 160
  br i1 %822, label %823, label %828

823:                                              ; preds = %818
  %824 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %825 = load i32, i32* %7, align 4
  %826 = add nsw i32 %825, 768
  %827 = call i32 @cp_ctx(%struct.nouveau_grctx* %824, i32 %826, i32 4)
  br label %833

828:                                              ; preds = %818
  %829 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %830 = load i32, i32* %7, align 4
  %831 = add nsw i32 %830, 768
  %832 = call i32 @cp_ctx(%struct.nouveau_grctx* %829, i32 %831, i32 5)
  br label %833

833:                                              ; preds = %828, %823
  %834 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %835 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 4
  %837 = icmp eq i32 %836, 80
  br i1 %837, label %838, label %843

838:                                              ; preds = %833
  %839 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %840 = load i32, i32* %7, align 4
  %841 = add nsw i32 %840, 772
  %842 = call i32 @gr_def(%struct.nouveau_grctx* %839, i32 %841, i32 28784)
  br label %871

843:                                              ; preds = %833
  %844 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %845 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = icmp slt i32 %846, 160
  br i1 %847, label %848, label %853

848:                                              ; preds = %843
  %849 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %850 = load i32, i32* %7, align 4
  %851 = add nsw i32 %850, 772
  %852 = call i32 @gr_def(%struct.nouveau_grctx* %849, i32 %851, i32 159856)
  br label %870

853:                                              ; preds = %843
  %854 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %855 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 4
  %857 = call i64 @IS_NVA3F(i32 %856)
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %864, label %859

859:                                              ; preds = %853
  %860 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %861 = load i32, i32* %7, align 4
  %862 = add nsw i32 %861, 772
  %863 = call i32 @gr_def(%struct.nouveau_grctx* %860, i32 %862, i32 17985648)
  br label %869

864:                                              ; preds = %853
  %865 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %866 = load i32, i32* %7, align 4
  %867 = add nsw i32 %866, 772
  %868 = call i32 @gr_def(%struct.nouveau_grctx* %865, i32 %867, i32 85094512)
  br label %869

869:                                              ; preds = %864, %859
  br label %870

870:                                              ; preds = %869, %848
  br label %871

871:                                              ; preds = %870, %838
  %872 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %873 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 4
  %875 = icmp slt i32 %874, 160
  br i1 %875, label %876, label %881

876:                                              ; preds = %871
  %877 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %878 = load i32, i32* %7, align 4
  %879 = add nsw i32 %878, 792
  %880 = call i32 @cp_ctx(%struct.nouveau_grctx* %877, i32 %879, i32 1)
  br label %886

881:                                              ; preds = %871
  %882 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %883 = load i32, i32* %7, align 4
  %884 = add nsw i32 %883, 800
  %885 = call i32 @cp_ctx(%struct.nouveau_grctx* %882, i32 %884, i32 1)
  br label %886

886:                                              ; preds = %881, %876
  %887 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %888 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 4
  %890 = icmp eq i32 %889, 80
  br i1 %890, label %891, label %896

891:                                              ; preds = %886
  %892 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %893 = load i32, i32* %7, align 4
  %894 = add nsw i32 %893, 792
  %895 = call i32 @gr_def(%struct.nouveau_grctx* %892, i32 %894, i32 262143)
  br label %912

896:                                              ; preds = %886
  %897 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %898 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = icmp slt i32 %899, 160
  br i1 %900, label %901, label %906

901:                                              ; preds = %896
  %902 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %903 = load i32, i32* %7, align 4
  %904 = add nsw i32 %903, 792
  %905 = call i32 @gr_def(%struct.nouveau_grctx* %902, i32 %904, i32 67108863)
  br label %911

906:                                              ; preds = %896
  %907 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %908 = load i32, i32* %7, align 4
  %909 = add nsw i32 %908, 800
  %910 = call i32 @gr_def(%struct.nouveau_grctx* %907, i32 %909, i32 134217727)
  br label %911

911:                                              ; preds = %906, %901
  br label %912

912:                                              ; preds = %911, %891
  %913 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %914 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 4
  %916 = icmp slt i32 %915, 160
  br i1 %916, label %917, label %922

917:                                              ; preds = %912
  %918 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %919 = load i32, i32* %7, align 4
  %920 = add nsw i32 %919, 804
  %921 = call i32 @cp_ctx(%struct.nouveau_grctx* %918, i32 %920, i32 5)
  br label %927

922:                                              ; preds = %912
  %923 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %924 = load i32, i32* %7, align 4
  %925 = add nsw i32 %924, 808
  %926 = call i32 @cp_ctx(%struct.nouveau_grctx* %923, i32 %925, i32 4)
  br label %927

927:                                              ; preds = %922, %917
  %928 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %929 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 4
  %931 = icmp slt i32 %930, 160
  br i1 %931, label %932, label %939

932:                                              ; preds = %927
  %933 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %934 = load i32, i32* %7, align 4
  %935 = add nsw i32 %934, 832
  %936 = call i32 @cp_ctx(%struct.nouveau_grctx* %933, i32 %935, i32 9)
  %937 = load i32, i32* %7, align 4
  %938 = add nsw i32 %937, 832
  store i32 %938, i32* %6, align 4
  br label %960

939:                                              ; preds = %927
  %940 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %941 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 4
  %943 = call i64 @IS_NVA3F(i32 %942)
  %944 = icmp ne i64 %943, 0
  br i1 %944, label %952, label %945

945:                                              ; preds = %939
  %946 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %947 = load i32, i32* %7, align 4
  %948 = add nsw i32 %947, 828
  %949 = call i32 @cp_ctx(%struct.nouveau_grctx* %946, i32 %948, i32 11)
  %950 = load i32, i32* %7, align 4
  %951 = add nsw i32 %950, 836
  store i32 %951, i32* %6, align 4
  br label %959

952:                                              ; preds = %939
  %953 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %954 = load i32, i32* %7, align 4
  %955 = add nsw i32 %954, 828
  %956 = call i32 @cp_ctx(%struct.nouveau_grctx* %953, i32 %955, i32 13)
  %957 = load i32, i32* %7, align 4
  %958 = add nsw i32 %957, 836
  store i32 %958, i32* %6, align 4
  br label %959

959:                                              ; preds = %952, %945
  br label %960

960:                                              ; preds = %959, %932
  %961 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %962 = load i32, i32* %6, align 4
  %963 = add nsw i32 %962, 0
  %964 = call i32 @gr_def(%struct.nouveau_grctx* %961, i32 %963, i32 1180679)
  %965 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %966 = load i32, i32* %6, align 4
  %967 = add nsw i32 %966, 4
  %968 = call i32 @gr_def(%struct.nouveau_grctx* %965, i32 %967, i32 84481287)
  %969 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %970 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 4
  %972 = icmp eq i32 %971, 132
  br i1 %972, label %973, label %978

973:                                              ; preds = %960
  %974 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %975 = load i32, i32* %6, align 4
  %976 = add nsw i32 %975, 8
  %977 = call i32 @gr_def(%struct.nouveau_grctx* %974, i32 %976, i32 84935170)
  br label %983

978:                                              ; preds = %960
  %979 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %980 = load i32, i32* %6, align 4
  %981 = add nsw i32 %980, 8
  %982 = call i32 @gr_def(%struct.nouveau_grctx* %979, i32 %981, i32 83952130)
  br label %983

983:                                              ; preds = %978, %973
  %984 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %985 = load i32, i32* %6, align 4
  %986 = add nsw i32 %985, 12
  %987 = call i32 @gr_def(%struct.nouveau_grctx* %984, i32 %986, i32 197121)
  %988 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %989 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %988, i32 0, i32 0
  %990 = load i32, i32* %989, align 4
  %991 = icmp eq i32 %990, 163
  br i1 %991, label %992, label %997

992:                                              ; preds = %983
  %993 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %994 = load i32, i32* %7, align 4
  %995 = add nsw i32 %994, 876
  %996 = call i32 @cp_ctx(%struct.nouveau_grctx* %993, i32 %995, i32 1)
  br label %997

997:                                              ; preds = %992, %983
  %998 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %999 = load i32, i32* %7, align 4
  %1000 = add nsw i32 %999, 1024
  %1001 = call i32 @cp_ctx(%struct.nouveau_grctx* %998, i32 %1000, i32 2)
  %1002 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1003 = load i32, i32* %7, align 4
  %1004 = add nsw i32 %1003, 1028
  %1005 = call i32 @gr_def(%struct.nouveau_grctx* %1002, i32 %1004, i32 64)
  %1006 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1007 = load i32, i32* %7, align 4
  %1008 = add nsw i32 %1007, 1036
  %1009 = call i32 @cp_ctx(%struct.nouveau_grctx* %1006, i32 %1008, i32 2)
  %1010 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1011 = load i32, i32* %7, align 4
  %1012 = add nsw i32 %1011, 1036
  %1013 = call i32 @gr_def(%struct.nouveau_grctx* %1010, i32 %1012, i32 218893066)
  %1014 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1015 = load i32, i32* %7, align 4
  %1016 = add nsw i32 %1015, 1040
  %1017 = call i32 @gr_def(%struct.nouveau_grctx* %1014, i32 %1016, i32 1315344)
  %1018 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1019 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1018, i32 0, i32 0
  %1020 = load i32, i32* %1019, align 4
  %1021 = icmp slt i32 %1020, 160
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %997
  %1023 = load i32, i32* %7, align 4
  %1024 = add nsw i32 %1023, 2048
  store i32 %1024, i32* %6, align 4
  br label %1028

1025:                                             ; preds = %997
  %1026 = load i32, i32* %7, align 4
  %1027 = add nsw i32 %1026, 1280
  store i32 %1027, i32* %6, align 4
  br label %1028

1028:                                             ; preds = %1025, %1022
  %1029 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1030 = load i32, i32* %6, align 4
  %1031 = call i32 @cp_ctx(%struct.nouveau_grctx* %1029, i32 %1030, i32 6)
  %1032 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1033 = load i32, i32* %6, align 4
  %1034 = add nsw i32 %1033, 0
  %1035 = call i32 @gr_def(%struct.nouveau_grctx* %1032, i32 %1034, i32 496)
  %1036 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1037 = load i32, i32* %6, align 4
  %1038 = add nsw i32 %1037, 4
  %1039 = call i32 @gr_def(%struct.nouveau_grctx* %1036, i32 %1038, i32 1)
  %1040 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1041 = load i32, i32* %6, align 4
  %1042 = add nsw i32 %1041, 8
  %1043 = call i32 @gr_def(%struct.nouveau_grctx* %1040, i32 %1042, i32 3)
  %1044 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1045 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1044, i32 0, i32 0
  %1046 = load i32, i32* %1045, align 4
  %1047 = icmp eq i32 %1046, 80
  br i1 %1047, label %1054, label %1048

1048:                                             ; preds = %1028
  %1049 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1050 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1049, i32 0, i32 0
  %1051 = load i32, i32* %1050, align 4
  %1052 = call i64 @IS_NVAAF(i32 %1051)
  %1053 = icmp ne i64 %1052, 0
  br i1 %1053, label %1054, label %1059

1054:                                             ; preds = %1048, %1028
  %1055 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1056 = load i32, i32* %6, align 4
  %1057 = add nsw i32 %1056, 12
  %1058 = call i32 @gr_def(%struct.nouveau_grctx* %1055, i32 %1057, i32 32768)
  br label %1059

1059:                                             ; preds = %1054, %1048
  %1060 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1061 = load i32, i32* %6, align 4
  %1062 = add nsw i32 %1061, 20
  %1063 = call i32 @gr_def(%struct.nouveau_grctx* %1060, i32 %1062, i32 237056)
  %1064 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1065 = load i32, i32* %6, align 4
  %1066 = add nsw i32 %1065, 28
  %1067 = call i32 @cp_ctx(%struct.nouveau_grctx* %1064, i32 %1066, i32 2)
  %1068 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1069 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1068, i32 0, i32 0
  %1070 = load i32, i32* %1069, align 4
  %1071 = icmp eq i32 %1070, 80
  br i1 %1071, label %1072, label %1077

1072:                                             ; preds = %1059
  %1073 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1074 = load i32, i32* %6, align 4
  %1075 = add nsw i32 %1074, 28
  %1076 = call i32 @gr_def(%struct.nouveau_grctx* %1073, i32 %1075, i32 64)
  br label %1082

1077:                                             ; preds = %1059
  %1078 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1079 = load i32, i32* %6, align 4
  %1080 = add nsw i32 %1079, 28
  %1081 = call i32 @gr_def(%struct.nouveau_grctx* %1078, i32 %1080, i32 256)
  br label %1082

1082:                                             ; preds = %1077, %1072
  %1083 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1084 = load i32, i32* %6, align 4
  %1085 = add nsw i32 %1084, 32
  %1086 = call i32 @gr_def(%struct.nouveau_grctx* %1083, i32 %1085, i32 14336)
  %1087 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1088 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1087, i32 0, i32 0
  %1089 = load i32, i32* %1088, align 4
  %1090 = icmp sge i32 %1089, 160
  br i1 %1090, label %1091, label %1116

1091:                                             ; preds = %1082
  %1092 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1093 = load i32, i32* %7, align 4
  %1094 = add nsw i32 %1093, 1356
  %1095 = call i32 @cp_ctx(%struct.nouveau_grctx* %1092, i32 %1094, i32 2)
  %1096 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1097 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1096, i32 0, i32 0
  %1098 = load i32, i32* %1097, align 4
  %1099 = call i64 @IS_NVA3F(i32 %1098)
  %1100 = icmp ne i64 %1099, 0
  br i1 %1100, label %1106, label %1101

1101:                                             ; preds = %1091
  %1102 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1103 = load i32, i32* %7, align 4
  %1104 = add nsw i32 %1103, 1356
  %1105 = call i32 @gr_def(%struct.nouveau_grctx* %1102, i32 %1104, i32 4186118)
  br label %1111

1106:                                             ; preds = %1091
  %1107 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1108 = load i32, i32* %7, align 4
  %1109 = add nsw i32 %1108, 1356
  %1110 = call i32 @gr_def(%struct.nouveau_grctx* %1107, i32 %1109, i32 4186119)
  br label %1111

1111:                                             ; preds = %1106, %1101
  %1112 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1113 = load i32, i32* %7, align 4
  %1114 = add nsw i32 %1113, 1360
  %1115 = call i32 @gr_def(%struct.nouveau_grctx* %1112, i32 %1114, i32 4186112)
  br label %1116

1116:                                             ; preds = %1111, %1082
  %1117 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1118 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1117, i32 0, i32 0
  %1119 = load i32, i32* %1118, align 4
  %1120 = icmp slt i32 %1119, 160
  br i1 %1120, label %1121, label %1124

1121:                                             ; preds = %1116
  %1122 = load i32, i32* %7, align 4
  %1123 = add nsw i32 %1122, 2560
  store i32 %1123, i32* %6, align 4
  br label %1127

1124:                                             ; preds = %1116
  %1125 = load i32, i32* %7, align 4
  %1126 = add nsw i32 %1125, 1664
  store i32 %1126, i32* %6, align 4
  br label %1127

1127:                                             ; preds = %1124, %1121
  %1128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1129 = load i32, i32* %6, align 4
  %1130 = call i32 @cp_ctx(%struct.nouveau_grctx* %1128, i32 %1129, i32 1)
  %1131 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1132 = load i32, i32* %6, align 4
  %1133 = call i32 @gr_def(%struct.nouveau_grctx* %1131, i32 %1132, i32 4210752)
  %1134 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1135 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1134, i32 0, i32 0
  %1136 = load i32, i32* %1135, align 4
  %1137 = icmp slt i32 %1136, 160
  br i1 %1137, label %1138, label %1141

1138:                                             ; preds = %1127
  %1139 = load i32, i32* %7, align 4
  %1140 = add nsw i32 %1139, 3584
  store i32 %1140, i32* %6, align 4
  br label %1144

1141:                                             ; preds = %1127
  %1142 = load i32, i32* %7, align 4
  %1143 = add nsw i32 %1142, 1792
  store i32 %1143, i32* %6, align 4
  br label %1144

1144:                                             ; preds = %1141, %1138
  %1145 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1146 = load i32, i32* %6, align 4
  %1147 = call i32 @cp_ctx(%struct.nouveau_grctx* %1145, i32 %1146, i32 2)
  %1148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1149 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1148, i32 0, i32 0
  %1150 = load i32, i32* %1149, align 4
  %1151 = icmp slt i32 %1150, 160
  br i1 %1151, label %1152, label %1156

1152:                                             ; preds = %1144
  %1153 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1154 = load i32, i32* %6, align 4
  %1155 = call i32 @gr_def(%struct.nouveau_grctx* %1153, i32 %1154, i32 7860229)
  br label %1190

1156:                                             ; preds = %1144
  %1157 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1158 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1157, i32 0, i32 0
  %1159 = load i32, i32* %1158, align 4
  %1160 = icmp eq i32 %1159, 165
  br i1 %1160, label %1161, label %1165

1161:                                             ; preds = %1156
  %1162 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1163 = load i32, i32* %6, align 4
  %1164 = call i32 @gr_def(%struct.nouveau_grctx* %1162, i32 %1163, i32 1828188167)
  br label %1189

1165:                                             ; preds = %1156
  %1166 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1167 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1166, i32 0, i32 0
  %1168 = load i32, i32* %1167, align 4
  %1169 = icmp eq i32 %1168, 168
  br i1 %1169, label %1170, label %1174

1170:                                             ; preds = %1165
  %1171 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1172 = load i32, i32* %6, align 4
  %1173 = call i32 @gr_def(%struct.nouveau_grctx* %1171, i32 %1172, i32 1828712455)
  br label %1188

1174:                                             ; preds = %1165
  %1175 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1176 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1175, i32 0, i32 0
  %1177 = load i32, i32* %1176, align 4
  %1178 = icmp eq i32 %1177, 172
  br i1 %1178, label %1179, label %1183

1179:                                             ; preds = %1174
  %1180 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1181 = load i32, i32* %6, align 4
  %1182 = call i32 @gr_def(%struct.nouveau_grctx* %1180, i32 %1181, i32 218099719)
  br label %1187

1183:                                             ; preds = %1174
  %1184 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1185 = load i32, i32* %6, align 4
  %1186 = call i32 @gr_def(%struct.nouveau_grctx* %1184, i32 %1185, i32 217575431)
  br label %1187

1187:                                             ; preds = %1183, %1179
  br label %1188

1188:                                             ; preds = %1187, %1170
  br label %1189

1189:                                             ; preds = %1188, %1161
  br label %1190

1190:                                             ; preds = %1189, %1152
  %1191 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1192 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1191, i32 0, i32 0
  %1193 = load i32, i32* %1192, align 4
  %1194 = icmp eq i32 %1193, 80
  br i1 %1194, label %1195, label %1200

1195:                                             ; preds = %1190
  %1196 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1197 = load i32, i32* %6, align 4
  %1198 = add nsw i32 %1197, 4
  %1199 = call i32 @gr_def(%struct.nouveau_grctx* %1196, i32 %1198, i32 32767)
  br label %1216

1200:                                             ; preds = %1190
  %1201 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1202 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1201, i32 0, i32 0
  %1203 = load i32, i32* %1202, align 4
  %1204 = icmp slt i32 %1203, 160
  br i1 %1204, label %1205, label %1210

1205:                                             ; preds = %1200
  %1206 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1207 = load i32, i32* %6, align 4
  %1208 = add nsw i32 %1207, 4
  %1209 = call i32 @gr_def(%struct.nouveau_grctx* %1206, i32 %1208, i32 4161535)
  br label %1215

1210:                                             ; preds = %1200
  %1211 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1212 = load i32, i32* %6, align 4
  %1213 = add nsw i32 %1212, 4
  %1214 = call i32 @gr_def(%struct.nouveau_grctx* %1211, i32 %1213, i32 46104575)
  br label %1215

1215:                                             ; preds = %1210, %1205
  br label %1216

1216:                                             ; preds = %1215, %1195
  %1217 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1218 = load i32, i32* %6, align 4
  %1219 = add nsw i32 %1218, 44
  %1220 = call i32 @cp_ctx(%struct.nouveau_grctx* %1217, i32 %1219, i32 1)
  %1221 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1222 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1221, i32 0, i32 0
  %1223 = load i32, i32* %1222, align 4
  %1224 = icmp eq i32 %1223, 80
  br i1 %1224, label %1225, label %1258

1225:                                             ; preds = %1216
  %1226 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1227 = load i32, i32* %6, align 4
  %1228 = add nsw i32 %1227, 80
  %1229 = call i32 @cp_ctx(%struct.nouveau_grctx* %1226, i32 %1228, i32 9)
  %1230 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1231 = load i32, i32* %6, align 4
  %1232 = add nsw i32 %1231, 84
  %1233 = call i32 @gr_def(%struct.nouveau_grctx* %1230, i32 %1232, i32 1023)
  %1234 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1235 = load i32, i32* %6, align 4
  %1236 = add nsw i32 %1235, 88
  %1237 = call i32 @gr_def(%struct.nouveau_grctx* %1234, i32 %1236, i32 3)
  %1238 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1239 = load i32, i32* %6, align 4
  %1240 = add nsw i32 %1239, 92
  %1241 = call i32 @gr_def(%struct.nouveau_grctx* %1238, i32 %1240, i32 3)
  %1242 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1243 = load i32, i32* %6, align 4
  %1244 = add nsw i32 %1243, 96
  %1245 = call i32 @gr_def(%struct.nouveau_grctx* %1242, i32 %1244, i32 511)
  %1246 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1247 = load i32, i32* %6, align 4
  %1248 = add nsw i32 %1247, 100
  %1249 = call i32 @gr_def(%struct.nouveau_grctx* %1246, i32 %1248, i32 31)
  %1250 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1251 = load i32, i32* %6, align 4
  %1252 = add nsw i32 %1251, 104
  %1253 = call i32 @gr_def(%struct.nouveau_grctx* %1250, i32 %1252, i32 15)
  %1254 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1255 = load i32, i32* %6, align 4
  %1256 = add nsw i32 %1255, 108
  %1257 = call i32 @gr_def(%struct.nouveau_grctx* %1254, i32 %1256, i32 15)
  br label %1282

1258:                                             ; preds = %1216
  %1259 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %1260 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %1259, i32 0, i32 0
  %1261 = load i32, i32* %1260, align 4
  %1262 = icmp slt i32 %1261, 160
  br i1 %1262, label %1263, label %1272

1263:                                             ; preds = %1258
  %1264 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1265 = load i32, i32* %6, align 4
  %1266 = add nsw i32 %1265, 80
  %1267 = call i32 @cp_ctx(%struct.nouveau_grctx* %1264, i32 %1266, i32 1)
  %1268 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1269 = load i32, i32* %6, align 4
  %1270 = add nsw i32 %1269, 112
  %1271 = call i32 @cp_ctx(%struct.nouveau_grctx* %1268, i32 %1270, i32 1)
  br label %1281

1272:                                             ; preds = %1258
  %1273 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1274 = load i32, i32* %6, align 4
  %1275 = add nsw i32 %1274, 80
  %1276 = call i32 @cp_ctx(%struct.nouveau_grctx* %1273, i32 %1275, i32 1)
  %1277 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %1278 = load i32, i32* %6, align 4
  %1279 = add nsw i32 %1278, 96
  %1280 = call i32 @cp_ctx(%struct.nouveau_grctx* %1277, i32 %1279, i32 5)
  br label %1281

1281:                                             ; preds = %1272, %1263
  br label %1282

1282:                                             ; preds = %1281, %1225
  br label %1283

1283:                                             ; preds = %1282, %627
  br label %1284

1284:                                             ; preds = %1283
  %1285 = load i32, i32* %4, align 4
  %1286 = add nsw i32 %1285, 1
  store i32 %1286, i32* %4, align 4
  br label %624

1287:                                             ; preds = %624
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @cp_ctx(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @gr_def(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @nv50_graph_construct_mmio_ddata(%struct.nouveau_grctx*) #1

declare dso_local i64 @IS_NVAAF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
