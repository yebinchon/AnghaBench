; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_vm = type { i32 }
%struct.nvc0_graph_priv = type { i32, i32*, i32, %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio* }
%struct.nvc0_graph_mmio = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.nvc0_graph_data = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.nvc0_graph_chan = type { i32, %struct.TYPE_5__, %struct.nvc0_graph_chan*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.nvc0_graph_chan* }
%struct.TYPE_6__ = type { %struct.nouveau_vm* }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_SYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_vm*, align 8
  %15 = alloca %struct.nvc0_graph_priv*, align 8
  %16 = alloca %struct.nvc0_graph_data*, align 8
  %17 = alloca %struct.nvc0_graph_mmio*, align 8
  %18 = alloca %struct.nvc0_graph_chan*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %25 = call %struct.TYPE_6__* @nouveau_client(%struct.nouveau_object* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.nouveau_vm*, %struct.nouveau_vm** %26, align 8
  store %struct.nouveau_vm* %27, %struct.nouveau_vm** %14, align 8
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %29 = bitcast %struct.nouveau_object* %28 to i8*
  %30 = bitcast i8* %29 to %struct.nvc0_graph_priv*
  store %struct.nvc0_graph_priv* %30, %struct.nvc0_graph_priv** %15, align 8
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %32 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %31, i32 0, i32 4
  %33 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %32, align 8
  %34 = bitcast %struct.nvc0_graph_mmio* %33 to %struct.nvc0_graph_data*
  store %struct.nvc0_graph_data* %34, %struct.nvc0_graph_data** %16, align 8
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %36 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %35, i32 0, i32 3
  %37 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %36, align 8
  store %struct.nvc0_graph_mmio* %37, %struct.nvc0_graph_mmio** %17, align 8
  %38 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %40 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %42 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %45 = call i32 @nouveau_graph_context_create(%struct.nouveau_object* %38, %struct.nouveau_object* %39, %struct.nouveau_oclass* %40, i32* null, i32 %43, i32 256, i32 %44, %struct.nvc0_graph_chan** %18)
  store i32 %45, i32* %19, align 4
  %46 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %47 = call %struct.nouveau_object* @nv_object(%struct.nvc0_graph_chan* %46)
  %48 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %47, %struct.nouveau_object** %48, align 8
  %49 = load i32, i32* %19, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %6
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %7, align 4
  br label %289

53:                                               ; preds = %6
  %54 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %55 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %56 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %55, i32 0, i32 2
  %57 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %54, i32* null, i32 4096, i32 256, i32 0, %struct.nvc0_graph_chan** %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %7, align 4
  br label %289

62:                                               ; preds = %53
  %63 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %64 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %63, i32 0, i32 2
  %65 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %64, align 8
  %66 = call %struct.nvc0_graph_chan* @nv_gpuobj(%struct.nvc0_graph_chan* %65)
  %67 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %68 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %69 = load i32, i32* @NV_MEM_ACCESS_SYS, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %72 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %71, i32 0, i32 1
  %73 = call i32 @nouveau_gpuobj_map_vm(%struct.nvc0_graph_chan* %66, %struct.nouveau_vm* %67, i32 %70, %struct.TYPE_5__* %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %7, align 4
  br label %289

78:                                               ; preds = %62
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %141, %78
  %80 = load %struct.nvc0_graph_data*, %struct.nvc0_graph_data** %16, align 8
  %81 = getelementptr inbounds %struct.nvc0_graph_data, %struct.nvc0_graph_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %87 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %86, i32 0, i32 4
  %88 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %87, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.nvc0_graph_mmio* %88)
  %90 = icmp slt i32 %85, %89
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i1 [ false, %79 ], [ %90, %84 ]
  br i1 %92, label %93, label %144

93:                                               ; preds = %91
  %94 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %95 = load %struct.nvc0_graph_data*, %struct.nvc0_graph_data** %16, align 8
  %96 = getelementptr inbounds %struct.nvc0_graph_data, %struct.nvc0_graph_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.nvc0_graph_data*, %struct.nvc0_graph_data** %16, align 8
  %99 = getelementptr inbounds %struct.nvc0_graph_data, %struct.nvc0_graph_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %102 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %94, i32* null, i32 %97, i32 %100, i32 0, %struct.nvc0_graph_chan** %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %93
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %7, align 4
  br label %289

113:                                              ; preds = %93
  %114 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %115 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %120, align 8
  %122 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %123 = load %struct.nvc0_graph_data*, %struct.nvc0_graph_data** %16, align 8
  %124 = getelementptr inbounds %struct.nvc0_graph_data, %struct.nvc0_graph_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %127 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @nouveau_gpuobj_map_vm(%struct.nvc0_graph_chan* %121, %struct.nouveau_vm* %122, i32 %125, %struct.TYPE_5__* %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %113
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %7, align 4
  br label %289

138:                                              ; preds = %113
  %139 = load %struct.nvc0_graph_data*, %struct.nvc0_graph_data** %16, align 8
  %140 = getelementptr inbounds %struct.nvc0_graph_data, %struct.nvc0_graph_data* %139, i32 1
  store %struct.nvc0_graph_data* %140, %struct.nvc0_graph_data** %16, align 8
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %20, align 4
  br label %79

144:                                              ; preds = %91
  store i32 0, i32* %20, align 4
  br label %145

145:                                              ; preds = %211, %144
  %146 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %147 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32, i32* %20, align 4
  %152 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %153 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %152, i32 0, i32 3
  %154 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %153, align 8
  %155 = call i32 @ARRAY_SIZE(%struct.nvc0_graph_mmio* %154)
  %156 = icmp slt i32 %151, %155
  br label %157

157:                                              ; preds = %150, %145
  %158 = phi i1 [ false, %145 ], [ %156, %150 ]
  br i1 %158, label %159, label %214

159:                                              ; preds = %157
  %160 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %161 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %21, align 4
  %163 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %164 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %22, align 4
  %166 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %167 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %159
  %171 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %172 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %175 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %23, align 4
  %182 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %183 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = ashr i32 %181, %184
  %186 = load i32, i32* %22, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %22, align 4
  br label %188

188:                                              ; preds = %170, %159
  %189 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %190 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %189, i32 0, i32 2
  %191 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %190, align 8
  %192 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %193 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = mul nsw i32 %194, 4
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %191, i32 %196, i32 %197)
  %199 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %200 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %199, i32 0, i32 2
  %201 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %200, align 8
  %202 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %203 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = mul nsw i32 %204, 4
  %207 = load i32, i32* %22, align 4
  %208 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %201, i32 %206, i32 %207)
  %209 = load %struct.nvc0_graph_mmio*, %struct.nvc0_graph_mmio** %17, align 8
  %210 = getelementptr inbounds %struct.nvc0_graph_mmio, %struct.nvc0_graph_mmio* %209, i32 1
  store %struct.nvc0_graph_mmio* %210, %struct.nvc0_graph_mmio** %17, align 8
  br label %211

211:                                              ; preds = %188
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %20, align 4
  br label %145

214:                                              ; preds = %157
  store i32 0, i32* %20, align 4
  br label %215

215:                                              ; preds = %233, %214
  %216 = load i32, i32* %20, align 4
  %217 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %218 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %236

221:                                              ; preds = %215
  %222 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %223 = load i32, i32* %20, align 4
  %224 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %225 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sdiv i32 %227, 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %222, i32 %223, i32 %231)
  br label %233

233:                                              ; preds = %221
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 4
  store i32 %235, i32* %20, align 4
  br label %215

236:                                              ; preds = %215
  %237 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %238 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %236
  %242 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %243 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %244 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sdiv i32 %245, 2
  %247 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %242, i32 0, i32 %246)
  %248 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %249 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %250 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 8
  %254 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %248, i32 4, i32 %253)
  br label %288

255:                                              ; preds = %236
  %256 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %257 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %256, i32 244, i32 0)
  %258 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %259 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %258, i32 248, i32 0)
  %260 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %261 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %262 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sdiv i32 %263, 2
  %265 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %260, i32 16, i32 %264)
  %266 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %267 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %268 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @lower_32_bits(i32 %270)
  %272 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %266, i32 20, i32 %271)
  %273 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %274 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %275 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @upper_32_bits(i32 %277)
  %279 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %273, i32 24, i32 %278)
  %280 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %281 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %280, i32 28, i32 1)
  %282 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %283 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %282, i32 32, i32 0)
  %284 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %285 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %284, i32 40, i32 0)
  %286 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %18, align 8
  %287 = call i32 @nv_wo32(%struct.nvc0_graph_chan* %286, i32 44, i32 0)
  br label %288

288:                                              ; preds = %255, %241
  store i32 0, i32* %7, align 4
  br label %289

289:                                              ; preds = %288, %136, %111, %76, %60, %51
  %290 = load i32, i32* %7, align 4
  ret i32 %290
}

declare dso_local %struct.TYPE_6__* @nouveau_client(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nvc0_graph_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_graph_chan*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.nvc0_graph_chan**) #1

declare dso_local i32 @nouveau_gpuobj_map_vm(%struct.nvc0_graph_chan*, %struct.nouveau_vm*, i32, %struct.TYPE_5__*) #1

declare dso_local %struct.nvc0_graph_chan* @nv_gpuobj(%struct.nvc0_graph_chan*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nvc0_graph_mmio*) #1

declare dso_local i32 @nv_wo32(%struct.nvc0_graph_chan*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
