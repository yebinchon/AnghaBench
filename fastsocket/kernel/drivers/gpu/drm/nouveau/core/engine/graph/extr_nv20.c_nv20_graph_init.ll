; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }
%struct.nv20_graph_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NV20_PGRAPH_CHANNEL_CTX_TABLE = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_INDEX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_DATA = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4
@NV10_PGRAPH_SURFACE = common dso_local global i32 0, align 4
@NV03_PGRAPH_ABS_UCLIP_XMIN = common dso_local global i32 0, align 4
@NV03_PGRAPH_ABS_UCLIP_YMIN = common dso_local global i32 0, align 4
@NV03_PGRAPH_ABS_UCLIP_XMAX = common dso_local global i32 0, align 4
@NV03_PGRAPH_ABS_UCLIP_YMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv20_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nv20_graph_priv*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %11)
  store %struct.nouveau_engine* %12, %struct.nouveau_engine** %4, align 8
  %13 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %14 = bitcast %struct.nouveau_engine* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv20_graph_priv*
  store %struct.nv20_graph_priv* %15, %struct.nv20_graph_priv** %5, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %17 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %16)
  store %struct.nouveau_fb* %17, %struct.nouveau_fb** %6, align 8
  %18 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %19 = getelementptr inbounds %struct.nv20_graph_priv, %struct.nv20_graph_priv* %18, i32 0, i32 1
  %20 = call i32 @nouveau_graph_init(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %250

25:                                               ; preds = %1
  %26 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %27 = load i32, i32* @NV20_PGRAPH_CHANNEL_CTX_TABLE, align 4
  %28 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %29 = getelementptr inbounds %struct.nv20_graph_priv, %struct.nv20_graph_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = call i32 @nv_wr32(%struct.nv20_graph_priv* %26, i32 %27, i32 %33)
  %35 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %36 = call %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %57

40:                                               ; preds = %25
  %41 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %42 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %43 = call i32 @nv_wr32(%struct.nv20_graph_priv* %41, i32 %42, i32 3997696)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %51, %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 15
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %49 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %50 = call i32 @nv_wr32(%struct.nv20_graph_priv* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %44

54:                                               ; preds = %44
  %55 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %56 = call i32 @nv_wait(%struct.nv20_graph_priv* %55, i32 4196096, i32 -1, i32 0)
  br label %74

57:                                               ; preds = %25
  %58 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %59 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %60 = call i32 @nv_wr32(%struct.nv20_graph_priv* %58, i32 %59, i32 46661632)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %68, %57
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %66 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %67 = call i32 @nv_wr32(%struct.nv20_graph_priv* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %61

71:                                               ; preds = %61
  %72 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %73 = call i32 @nv_wait(%struct.nv20_graph_priv* %72, i32 4196096, i32 -1, i32 0)
  br label %74

74:                                               ; preds = %71, %54
  %75 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %76 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %77 = call i32 @nv_wr32(%struct.nv20_graph_priv* %75, i32 %76, i32 -1)
  %78 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %79 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %80 = call i32 @nv_wr32(%struct.nv20_graph_priv* %78, i32 %79, i32 -1)
  %81 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %82 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %83 = call i32 @nv_wr32(%struct.nv20_graph_priv* %81, i32 %82, i32 -1)
  %84 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %85 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %86 = call i32 @nv_wr32(%struct.nv20_graph_priv* %84, i32 %85, i32 0)
  %87 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %88 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %89 = call i32 @nv_wr32(%struct.nv20_graph_priv* %87, i32 %88, i32 1148672)
  %90 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %91 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %92 = call i32 @nv_wr32(%struct.nv20_graph_priv* %90, i32 %91, i32 -204602251)
  %93 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %94 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %95 = call i32 @nv_wr32(%struct.nv20_graph_priv* %93, i32 %94, i32 0)
  %96 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %97 = call i32 @nv_wr32(%struct.nv20_graph_priv* %96, i32 4194460, i32 64)
  %98 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %99 = call %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv* %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 37
  br i1 %102, label %103, label %116

103:                                              ; preds = %74
  %104 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %105 = call i32 @nv_wr32(%struct.nv20_graph_priv* %104, i32 4196496, i32 11063295)
  %106 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %107 = call i32 @nv_wr32(%struct.nv20_graph_priv* %106, i32 4195856, i32 810229686)
  %108 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %109 = call i32 @nv_wr32(%struct.nv20_graph_priv* %108, i32 4197248, i32 482162819)
  %110 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %111 = call i32 @nv_wr32(%struct.nv20_graph_priv* %110, i32 4197252, i32 1140850688)
  %112 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %113 = call i32 @nv_wr32(%struct.nv20_graph_priv* %112, i32 4194456, i32 1073741952)
  %114 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %115 = call i32 @nv_wr32(%struct.nv20_graph_priv* %114, i32 4197256, i32 255)
  br label %139

116:                                              ; preds = %74
  %117 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %118 = call i32 @nv_wr32(%struct.nv20_graph_priv* %117, i32 4196480, i32 575455)
  %119 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %120 = call i32 @nv_wr32(%struct.nv20_graph_priv* %119, i32 4194452, i32 5)
  %121 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %122 = call i32 @nv_wr32(%struct.nv20_graph_priv* %121, i32 4197248, i32 1173021198)
  %123 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %124 = call i32 @nv_wr32(%struct.nv20_graph_priv* %123, i32 4197252, i32 603979776)
  %125 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %126 = call i32 @nv_wr32(%struct.nv20_graph_priv* %125, i32 4194456, i32 64)
  %127 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %128 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %129 = call i32 @nv_wr32(%struct.nv20_graph_priv* %127, i32 %128, i32 14680120)
  %130 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %131 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %132 = call i32 @nv_wr32(%struct.nv20_graph_priv* %130, i32 %131, i32 48)
  %133 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %134 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %135 = call i32 @nv_wr32(%struct.nv20_graph_priv* %133, i32 %134, i32 14745656)
  %136 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %137 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %138 = call i32 @nv_wr32(%struct.nv20_graph_priv* %136, i32 %137, i32 48)
  br label %139

139:                                              ; preds = %116, %103
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %143 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %149 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %148, i32 0, i32 0
  %150 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %149, align 8
  %151 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 %150(%struct.nouveau_engine* %151, i32 %152)
  br label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %140

157:                                              ; preds = %140
  %158 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %159 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %160 = call i32 @nv_rd32(%struct.nv20_graph_priv* %159, i32 1049380)
  %161 = call i32 @nv_wr32(%struct.nv20_graph_priv* %158, i32 4196768, i32 %160)
  %162 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %163 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %164 = call i32 @nv_wr32(%struct.nv20_graph_priv* %162, i32 %163, i32 15335436)
  %165 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %166 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %167 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %168 = call i32 @nv_rd32(%struct.nv20_graph_priv* %167, i32 1049380)
  %169 = call i32 @nv_wr32(%struct.nv20_graph_priv* %165, i32 %166, i32 %168)
  %170 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %171 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %172 = call i32 @nv_wr32(%struct.nv20_graph_priv* %170, i32 %171, i32 268435712)
  %173 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %174 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %175 = call i32 @nv_wr32(%struct.nv20_graph_priv* %173, i32 %174, i32 -1)
  %176 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %177 = load i32, i32* @NV10_PGRAPH_SURFACE, align 4
  %178 = call i32 @nv_rd32(%struct.nv20_graph_priv* %176, i32 %177)
  %179 = and i32 %178, 524032
  store i32 %179, i32* %7, align 4
  %180 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %181 = load i32, i32* @NV10_PGRAPH_SURFACE, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @nv_wr32(%struct.nv20_graph_priv* %180, i32 %181, i32 %182)
  %184 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %185 = load i32, i32* @NV10_PGRAPH_SURFACE, align 4
  %186 = call i32 @nv_rd32(%struct.nv20_graph_priv* %184, i32 %185)
  %187 = or i32 %186, 131328
  store i32 %187, i32* %7, align 4
  %188 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %189 = load i32, i32* @NV10_PGRAPH_SURFACE, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @nv_wr32(%struct.nv20_graph_priv* %188, i32 %189, i32 %190)
  %192 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %193 = call %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv* %192)
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pci_resource_len(i32 %195, i32 0)
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  %198 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %199 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %200 = call i32 @nv_rd32(%struct.nv20_graph_priv* %199, i32 1049088)
  %201 = call i32 @nv_wr32(%struct.nv20_graph_priv* %198, i32 4196772, i32 %200)
  %202 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %203 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %204 = call i32 @nv_rd32(%struct.nv20_graph_priv* %203, i32 1049092)
  %205 = call i32 @nv_wr32(%struct.nv20_graph_priv* %202, i32 4196776, i32 %204)
  %206 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %207 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %208 = call i32 @nv_wr32(%struct.nv20_graph_priv* %206, i32 %207, i32 15335424)
  %209 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %210 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %211 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %212 = call i32 @nv_rd32(%struct.nv20_graph_priv* %211, i32 1049088)
  %213 = call i32 @nv_wr32(%struct.nv20_graph_priv* %209, i32 %210, i32 %212)
  %214 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %215 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %216 = call i32 @nv_wr32(%struct.nv20_graph_priv* %214, i32 %215, i32 15335428)
  %217 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %218 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %219 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %220 = call i32 @nv_rd32(%struct.nv20_graph_priv* %219, i32 1049092)
  %221 = call i32 @nv_wr32(%struct.nv20_graph_priv* %217, i32 %218, i32 %220)
  %222 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %223 = call i32 @nv_wr32(%struct.nv20_graph_priv* %222, i32 4196384, i32 0)
  %224 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %225 = call i32 @nv_wr32(%struct.nv20_graph_priv* %224, i32 4196388, i32 0)
  %226 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @nv_wr32(%struct.nv20_graph_priv* %226, i32 4196452, i32 %228)
  %230 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sub nsw i32 %231, 1
  %233 = call i32 @nv_wr32(%struct.nv20_graph_priv* %230, i32 4196456, i32 %232)
  %234 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %235 = call i32 @nv_wr32(%struct.nv20_graph_priv* %234, i32 4197152, i32 0)
  %236 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %237 = call i32 @nv_wr32(%struct.nv20_graph_priv* %236, i32 4197124, i32 -1)
  %238 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %239 = load i32, i32* @NV03_PGRAPH_ABS_UCLIP_XMIN, align 4
  %240 = call i32 @nv_wr32(%struct.nv20_graph_priv* %238, i32 %239, i32 0)
  %241 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %242 = load i32, i32* @NV03_PGRAPH_ABS_UCLIP_YMIN, align 4
  %243 = call i32 @nv_wr32(%struct.nv20_graph_priv* %241, i32 %242, i32 0)
  %244 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %245 = load i32, i32* @NV03_PGRAPH_ABS_UCLIP_XMAX, align 4
  %246 = call i32 @nv_wr32(%struct.nv20_graph_priv* %244, i32 %245, i32 32767)
  %247 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %248 = load i32, i32* @NV03_PGRAPH_ABS_UCLIP_YMAX, align 4
  %249 = call i32 @nv_wr32(%struct.nv20_graph_priv* %247, i32 %248, i32 32767)
  store i32 0, i32* %2, align 4
  br label %250

250:                                              ; preds = %157, %23
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv20_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @nv_device(%struct.nv20_graph_priv*) #1

declare dso_local i32 @nv_wait(%struct.nv20_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv20_graph_priv*, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
