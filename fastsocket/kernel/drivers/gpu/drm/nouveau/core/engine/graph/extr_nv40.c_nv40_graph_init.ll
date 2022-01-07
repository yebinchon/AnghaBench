; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }
%struct.nouveau_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nv40_graph_priv = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NV40_PGRAPH_CTXCTL_CUR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV40_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV04_PGRAPH_LIMIT_VIOL_PIX = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv40_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_fb*, align 8
  %6 = alloca %struct.nv40_graph_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %11)
  store %struct.nouveau_engine* %12, %struct.nouveau_engine** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %13)
  store %struct.nouveau_fb* %14, %struct.nouveau_fb** %5, align 8
  %15 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %16 = bitcast %struct.nouveau_engine* %15 to i8*
  %17 = bitcast i8* %16 to %struct.nv40_graph_priv*
  store %struct.nv40_graph_priv* %17, %struct.nv40_graph_priv** %6, align 8
  %18 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %19 = getelementptr inbounds %struct.nv40_graph_priv, %struct.nv40_graph_priv* %18, i32 0, i32 1
  %20 = call i32 @nouveau_graph_init(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %261

25:                                               ; preds = %1
  %26 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %27 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %26)
  %28 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nv40_graph_priv, %struct.nv40_graph_priv* %28, i32 0, i32 0
  %30 = call i32 @nv40_grctx_init(%struct.TYPE_5__* %27, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %261

35:                                               ; preds = %25
  %36 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %37 = load i32, i32* @NV40_PGRAPH_CTXCTL_CUR, align 4
  %38 = call i32 @nv_wr32(%struct.nv40_graph_priv* %36, i32 %37, i32 0)
  %39 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %40 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %41 = call i32 @nv_wr32(%struct.nv40_graph_priv* %39, i32 %40, i32 -1)
  %42 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %43 = load i32, i32* @NV40_PGRAPH_INTR_EN, align 4
  %44 = call i32 @nv_wr32(%struct.nv40_graph_priv* %42, i32 %43, i32 -1)
  %45 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %46 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %47 = call i32 @nv_wr32(%struct.nv40_graph_priv* %45, i32 %46, i32 -1)
  %48 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %49 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %50 = call i32 @nv_wr32(%struct.nv40_graph_priv* %48, i32 %49, i32 0)
  %51 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %52 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %53 = call i32 @nv_wr32(%struct.nv40_graph_priv* %51, i32 %52, i32 1074956224)
  %54 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %55 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %56 = call i32 @nv_wr32(%struct.nv40_graph_priv* %54, i32 %55, i32 -522289067)
  %57 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %58 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %59 = call i32 @nv_wr32(%struct.nv40_graph_priv* %57, i32 %58, i32 32768)
  %60 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %61 = load i32, i32* @NV04_PGRAPH_LIMIT_VIOL_PIX, align 4
  %62 = call i32 @nv_wr32(%struct.nv40_graph_priv* %60, i32 %61, i32 12467295)
  %63 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %64 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %65 = call i32 @nv_wr32(%struct.nv40_graph_priv* %63, i32 %64, i32 268501248)
  %66 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %67 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %68 = call i32 @nv_wr32(%struct.nv40_graph_priv* %66, i32 %67, i32 -1)
  %69 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %70 = call i32 @nv_rd32(%struct.nv40_graph_priv* %69, i32 5440)
  %71 = and i32 %70, 255
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %75

86:                                               ; preds = %75
  %87 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @nv_wr32(%struct.nv40_graph_priv* %87, i32 4214784, i32 %88)
  br label %90

90:                                               ; preds = %86, %35
  %91 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %92 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 64
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %98 = call i32 @nv_wr32(%struct.nv40_graph_priv* %97, i32 4196784, i32 -2094526465)
  %99 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %100 = call i32 @nv_wr32(%struct.nv40_graph_priv* %99, i32 4196788, i32 160)
  br label %106

101:                                              ; preds = %90
  %102 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %103 = call i32 @nv_wr32(%struct.nv40_graph_priv* %102, i32 4196384, i32 -2094526721)
  %104 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %105 = call i32 @nv_wr32(%struct.nv40_graph_priv* %104, i32 4196388, i32 160)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %108 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %136 [
    i32 64, label %111
    i32 69, label %111
    i32 65, label %116
    i32 66, label %116
    i32 67, label %121
    i32 68, label %126
    i32 70, label %126
    i32 74, label %126
    i32 76, label %126
    i32 78, label %126
    i32 71, label %131
    i32 73, label %131
    i32 75, label %131
  ]

111:                                              ; preds = %106, %106
  %112 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %113 = call i32 @nv_wr32(%struct.nv40_graph_priv* %112, i32 4196792, i32 7922534)
  %114 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %115 = call i32 @nv_wr32(%struct.nv40_graph_priv* %114, i32 4196796, i32 332)
  br label %137

116:                                              ; preds = %106, %106
  %117 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %118 = call i32 @nv_wr32(%struct.nv40_graph_priv* %117, i32 4196392, i32 7706367)
  %119 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %120 = call i32 @nv_wr32(%struct.nv40_graph_priv* %119, i32 4196396, i32 264)
  br label %137

121:                                              ; preds = %106
  %122 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %123 = call i32 @nv_wr32(%struct.nv40_graph_priv* %122, i32 4196392, i32 7523191)
  %124 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %125 = call i32 @nv_wr32(%struct.nv40_graph_priv* %124, i32 4196396, i32 264)
  br label %137

126:                                              ; preds = %106, %106, %106, %106, %106
  %127 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %128 = call i32 @nv_wr32(%struct.nv40_graph_priv* %127, i32 4196448, i32 0)
  %129 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %130 = call i32 @nv_wr32(%struct.nv40_graph_priv* %129, i32 4196452, i32 0)
  br label %137

131:                                              ; preds = %106, %106, %106
  %132 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %133 = call i32 @nv_wr32(%struct.nv40_graph_priv* %132, i32 4196392, i32 126027280)
  %134 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %135 = call i32 @nv_wr32(%struct.nv40_graph_priv* %134, i32 4196396, i32 362)
  br label %137

136:                                              ; preds = %106
  br label %137

137:                                              ; preds = %136, %131, %126, %121, %116, %111
  %138 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %139 = call i32 @nv_wr32(%struct.nv40_graph_priv* %138, i32 4197176, i32 805304320)
  %140 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %141 = call i32 @nv_wr32(%struct.nv40_graph_priv* %140, i32 4197180, i32 24576)
  %142 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %143 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %142)
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %161 [
    i32 68, label %146
    i32 74, label %146
    i32 70, label %151
    i32 76, label %156
    i32 78, label %156
    i32 103, label %156
  ]

146:                                              ; preds = %137, %137
  %147 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %148 = call i32 @nv_wr32(%struct.nv40_graph_priv* %147, i32 4197316, i32 268687496)
  %149 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %150 = call i32 @nv_wr32(%struct.nv40_graph_priv* %149, i32 4197308, i32 -1213745920)
  br label %162

151:                                              ; preds = %137
  %152 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %153 = call i32 @nv_wr32(%struct.nv40_graph_priv* %152, i32 4197316, i32 57380)
  %154 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %155 = call i32 @nv_wr32(%struct.nv40_graph_priv* %154, i32 4197308, i32 -1213745888)
  br label %162

156:                                              ; preds = %137, %137, %137
  %157 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %158 = call i32 @nv_wr32(%struct.nv40_graph_priv* %157, i32 4197316, i32 268687496)
  %159 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %160 = call i32 @nv_wr32(%struct.nv40_graph_priv* %159, i32 4197308, i32 -1213745856)
  br label %162

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161, %156, %151, %146
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %177, %162
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.nouveau_fb*, %struct.nouveau_fb** %5, align 8
  %166 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %172 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %171, i32 0, i32 0
  %173 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %172, align 8
  %174 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 %173(%struct.nouveau_engine* %174, i32 %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %163

180:                                              ; preds = %163
  %181 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %182 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %181)
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @pci_resource_len(i32 %184, i32 0)
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  %187 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %188 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %187)
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %218 [
    i32 64, label %191
  ]

191:                                              ; preds = %180
  %192 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %193 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %194 = call i32 @nv_rd32(%struct.nv40_graph_priv* %193, i32 1049088)
  %195 = call i32 @nv_wr32(%struct.nv40_graph_priv* %192, i32 4196772, i32 %194)
  %196 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %197 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %198 = call i32 @nv_rd32(%struct.nv40_graph_priv* %197, i32 1049092)
  %199 = call i32 @nv_wr32(%struct.nv40_graph_priv* %196, i32 4196776, i32 %198)
  %200 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %201 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %202 = call i32 @nv_rd32(%struct.nv40_graph_priv* %201, i32 1049088)
  %203 = call i32 @nv_wr32(%struct.nv40_graph_priv* %200, i32 4221348, i32 %202)
  %204 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %205 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %206 = call i32 @nv_rd32(%struct.nv40_graph_priv* %205, i32 1049092)
  %207 = call i32 @nv_wr32(%struct.nv40_graph_priv* %204, i32 4221352, i32 %206)
  %208 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %209 = call i32 @nv_wr32(%struct.nv40_graph_priv* %208, i32 4196384, i32 0)
  %210 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %211 = call i32 @nv_wr32(%struct.nv40_graph_priv* %210, i32 4196388, i32 0)
  %212 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @nv_wr32(%struct.nv40_graph_priv* %212, i32 4196452, i32 %213)
  %215 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @nv_wr32(%struct.nv40_graph_priv* %215, i32 4196456, i32 %216)
  br label %260

218:                                              ; preds = %180
  %219 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %220 = call %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv* %219)
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  switch i32 %222, label %232 [
    i32 65, label %223
    i32 66, label %223
    i32 67, label %223
    i32 69, label %223
    i32 78, label %223
    i32 68, label %223
    i32 74, label %223
  ]

223:                                              ; preds = %218, %218, %218, %218, %218, %218, %218
  %224 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %225 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %226 = call i32 @nv_rd32(%struct.nv40_graph_priv* %225, i32 1049088)
  %227 = call i32 @nv_wr32(%struct.nv40_graph_priv* %224, i32 4196848, i32 %226)
  %228 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %229 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %230 = call i32 @nv_rd32(%struct.nv40_graph_priv* %229, i32 1049092)
  %231 = call i32 @nv_wr32(%struct.nv40_graph_priv* %228, i32 4196852, i32 %230)
  br label %241

232:                                              ; preds = %218
  %233 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %234 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %235 = call i32 @nv_rd32(%struct.nv40_graph_priv* %234, i32 1049088)
  %236 = call i32 @nv_wr32(%struct.nv40_graph_priv* %233, i32 4197872, i32 %235)
  %237 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %238 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %239 = call i32 @nv_rd32(%struct.nv40_graph_priv* %238, i32 1049092)
  %240 = call i32 @nv_wr32(%struct.nv40_graph_priv* %237, i32 4197876, i32 %239)
  br label %241

241:                                              ; preds = %232, %223
  %242 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %243 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %244 = call i32 @nv_rd32(%struct.nv40_graph_priv* %243, i32 1049088)
  %245 = call i32 @nv_wr32(%struct.nv40_graph_priv* %242, i32 4221424, i32 %244)
  %246 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %247 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %248 = call i32 @nv_rd32(%struct.nv40_graph_priv* %247, i32 1049092)
  %249 = call i32 @nv_wr32(%struct.nv40_graph_priv* %246, i32 4221428, i32 %248)
  %250 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %251 = call i32 @nv_wr32(%struct.nv40_graph_priv* %250, i32 4196416, i32 0)
  %252 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %253 = call i32 @nv_wr32(%struct.nv40_graph_priv* %252, i32 4196420, i32 0)
  %254 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @nv_wr32(%struct.nv40_graph_priv* %254, i32 4196512, i32 %255)
  %257 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %6, align 8
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @nv_wr32(%struct.nv40_graph_priv* %257, i32 4196516, i32 %258)
  br label %260

260:                                              ; preds = %241, %191
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %33, %23
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv40_grctx_init(%struct.TYPE_5__*, i32*) #1

declare dso_local %struct.TYPE_5__* @nv_device(%struct.nv40_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv40_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv40_graph_priv*, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
