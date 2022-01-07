; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_vfetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_vfetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_vfetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_vfetch(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %7, i32 0, i32 0
  %9 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  store %struct.nouveau_device* %9, %struct.nouveau_device** %3, align 8
  store i32 16, i32* %4, align 4
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_NVA3F(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 32, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 160
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %23 = call i32 @xf_emit(%struct.nouveau_grctx* %22, i32 1, i32 0)
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nouveau_grctx* %24, i32 1, i32 1)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nouveau_grctx* %27, i32 1, i32 0)
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nouveau_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nouveau_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 1, i32 0)
  %35 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nouveau_grctx* %35, i32 1, i32 15)
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %38, 8
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 %40, i32 0)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %43, 8
  %45 = call i32 @xf_emit(%struct.nouveau_grctx* %42, i32 %44, i32 0)
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nouveau_grctx* %46, i32 1, i32 0)
  %48 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nouveau_grctx* %48, i32 1, i32 32)
  %50 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %51 = call i32 @xf_emit(%struct.nouveau_grctx* %50, i32 1, i32 0)
  %52 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %53 = call i32 @xf_emit(%struct.nouveau_grctx* %52, i32 1, i32 0)
  %54 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %55 = call i32 @xf_emit(%struct.nouveau_grctx* %54, i32 1, i32 0)
  %56 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_NVA3F(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %26
  %62 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %63 = call i32 @xf_emit(%struct.nouveau_grctx* %62, i32 11, i32 0)
  br label %76

64:                                               ; preds = %26
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 160
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %71 = call i32 @xf_emit(%struct.nouveau_grctx* %70, i32 9, i32 0)
  br label %75

72:                                               ; preds = %64
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nouveau_grctx* %73, i32 8, i32 0)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %61
  %77 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nouveau_grctx* %77, i32 1, i32 0)
  %79 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nouveau_grctx* %79, i32 1, i32 0)
  %81 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %82 = call i32 @xf_emit(%struct.nouveau_grctx* %81, i32 1, i32 0)
  %83 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nouveau_grctx* %83, i32 1, i32 26)
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nouveau_grctx* %85, i32 12, i32 0)
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nouveau_grctx* %87, i32 1, i32 0)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nouveau_grctx* %89, i32 1, i32 4)
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 1, i32 4)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nouveau_grctx* %93, i32 1, i32 0)
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nouveau_grctx* %95, i32 1, i32 4)
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nouveau_grctx* %97, i32 1, i32 8)
  %99 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %100 = call i32 @xf_emit(%struct.nouveau_grctx* %99, i32 1, i32 0)
  %101 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %102 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 80
  br i1 %104, label %105, label %108

105:                                              ; preds = %76
  %106 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %107 = call i32 @xf_emit(%struct.nouveau_grctx* %106, i32 1, i32 1023)
  br label %111

108:                                              ; preds = %76
  %109 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %110 = call i32 @xf_emit(%struct.nouveau_grctx* %109, i32 1, i32 2047)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %113 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 168
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %118 = call i32 @xf_emit(%struct.nouveau_grctx* %117, i32 1, i32 7680)
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %121 = call i32 @xf_emit(%struct.nouveau_grctx* %120, i32 12, i32 0)
  %122 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %123 = call i32 @xf_emit(%struct.nouveau_grctx* %122, i32 1, i32 15)
  %124 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sdiv i32 %125, 8
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @xf_emit(%struct.nouveau_grctx* %124, i32 %127, i32 0)
  %129 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %130 = call i32 @xf_emit(%struct.nouveau_grctx* %129, i32 1, i32 0)
  %131 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %132 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 80
  br i1 %134, label %135, label %143

135:                                              ; preds = %119
  %136 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %137 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 160
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %142 = call i32 @xf_emit(%struct.nouveau_grctx* %141, i32 2, i32 0)
  br label %146

143:                                              ; preds = %135, %119
  %144 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %145 = call i32 @xf_emit(%struct.nouveau_grctx* %144, i32 1, i32 0)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %148 = call i32 @xf_emit(%struct.nouveau_grctx* %147, i32 1, i32 0)
  %149 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %150 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_NVA3F(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %156 = call i32 @xf_emit(%struct.nouveau_grctx* %155, i32 16, i32 0)
  %157 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %158 = call i32 @xf_emit(%struct.nouveau_grctx* %157, i32 2, i32 0)
  %159 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %160 = call i32 @xf_emit(%struct.nouveau_grctx* %159, i32 2, i32 0)
  br label %168

161:                                              ; preds = %146
  %162 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %163 = call i32 @xf_emit(%struct.nouveau_grctx* %162, i32 8, i32 0)
  %164 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %165 = call i32 @xf_emit(%struct.nouveau_grctx* %164, i32 1, i32 0)
  %166 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %167 = call i32 @xf_emit(%struct.nouveau_grctx* %166, i32 2, i32 0)
  br label %168

168:                                              ; preds = %161, %154
  %169 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %170 = call i32 @xf_emit(%struct.nouveau_grctx* %169, i32 1, i32 0)
  %171 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %172 = call i32 @xf_emit(%struct.nouveau_grctx* %171, i32 1, i32 0)
  %173 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @xf_emit(%struct.nouveau_grctx* %173, i32 %174, i32 0)
  %176 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %177 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp sge i32 %178, 160
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %182 = call i32 @xf_emit(%struct.nouveau_grctx* %181, i32 1, i32 0)
  br label %183

183:                                              ; preds = %180, %168
  %184 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @xf_emit(%struct.nouveau_grctx* %184, i32 %185, i32 0)
  %187 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %188 = call i32 @xf_emit(%struct.nouveau_grctx* %187, i32 1, i32 0)
  %189 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @xf_emit(%struct.nouveau_grctx* %189, i32 %190, i32 0)
  %192 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %193 = call i32 @xf_emit(%struct.nouveau_grctx* %192, i32 1, i32 0)
  %194 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @xf_emit(%struct.nouveau_grctx* %194, i32 %195, i32 0)
  %197 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %198 = call i32 @xf_emit(%struct.nouveau_grctx* %197, i32 2, i32 0)
  %199 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %200 = call i32 @xf_emit(%struct.nouveau_grctx* %199, i32 1, i32 0)
  %201 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %202 = call i32 @xf_emit(%struct.nouveau_grctx* %201, i32 1, i32 0)
  %203 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %204 = call i32 @xf_emit(%struct.nouveau_grctx* %203, i32 1, i32 0)
  %205 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %206 = call i32 @xf_emit(%struct.nouveau_grctx* %205, i32 1, i32 0)
  %207 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %208 = call i32 @xf_emit(%struct.nouveau_grctx* %207, i32 1, i32 0)
  %209 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %210 = call i32 @xf_emit(%struct.nouveau_grctx* %209, i32 1, i32 0)
  %211 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @xf_emit(%struct.nouveau_grctx* %211, i32 %212, i32 0)
  %214 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %215 = call i32 @xf_emit(%struct.nouveau_grctx* %214, i32 3, i32 0)
  %216 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @xf_emit(%struct.nouveau_grctx* %216, i32 %217, i32 0)
  %219 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %220 = call i32 @xf_emit(%struct.nouveau_grctx* %219, i32 3, i32 0)
  %221 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @xf_emit(%struct.nouveau_grctx* %221, i32 %222, i32 0)
  %224 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %225 = call i32 @xf_emit(%struct.nouveau_grctx* %224, i32 3, i32 0)
  %226 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @xf_emit(%struct.nouveau_grctx* %226, i32 %227, i32 0)
  %229 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %230 = call i32 @xf_emit(%struct.nouveau_grctx* %229, i32 3, i32 0)
  %231 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @xf_emit(%struct.nouveau_grctx* %231, i32 %232, i32 0)
  %234 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %235 = call i32 @xf_emit(%struct.nouveau_grctx* %234, i32 3, i32 0)
  %236 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @xf_emit(%struct.nouveau_grctx* %236, i32 %237, i32 0)
  %239 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %240 = call i32 @xf_emit(%struct.nouveau_grctx* %239, i32 3, i32 0)
  %241 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %242 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @IS_NVA3F(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %183
  %247 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @xf_emit(%struct.nouveau_grctx* %247, i32 %248, i32 0)
  %250 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %251 = call i32 @xf_emit(%struct.nouveau_grctx* %250, i32 3, i32 0)
  br label %252

252:                                              ; preds = %246, %183
  %253 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %254 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @IS_NVA3F(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %260 = call i32 @xf_emit(%struct.nouveau_grctx* %259, i32 2, i32 0)
  br label %264

261:                                              ; preds = %252
  %262 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %263 = call i32 @xf_emit(%struct.nouveau_grctx* %262, i32 5, i32 0)
  br label %264

264:                                              ; preds = %261, %258
  %265 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %266 = call i32 @xf_emit(%struct.nouveau_grctx* %265, i32 1, i32 0)
  %267 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %268 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp slt i32 %269, 160
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %273 = call i32 @xf_emit(%struct.nouveau_grctx* %272, i32 65, i32 0)
  %274 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %275 = call i32 @xf_emit(%struct.nouveau_grctx* %274, i32 17, i32 0)
  br label %289

276:                                              ; preds = %264
  %277 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %278 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @IS_NVA3F(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %276
  %283 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %284 = call i32 @xf_emit(%struct.nouveau_grctx* %283, i32 80, i32 0)
  br label %288

285:                                              ; preds = %276
  %286 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %287 = call i32 @xf_emit(%struct.nouveau_grctx* %286, i32 88, i32 0)
  br label %288

288:                                              ; preds = %285, %282
  br label %289

289:                                              ; preds = %288, %271
  %290 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %291 = call i32 @xf_emit(%struct.nouveau_grctx* %290, i32 1, i32 15)
  %292 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %293 = load i32, i32* %4, align 4
  %294 = sdiv i32 %293, 8
  %295 = sub nsw i32 %294, 1
  %296 = call i32 @xf_emit(%struct.nouveau_grctx* %292, i32 %295, i32 0)
  %297 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %298 = call i32 @xf_emit(%struct.nouveau_grctx* %297, i32 1, i32 1)
  %299 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %300 = load i32, i32* %4, align 4
  %301 = mul nsw i32 %300, 4
  %302 = call i32 @xf_emit(%struct.nouveau_grctx* %299, i32 %301, i32 0)
  %303 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %304 = call i32 @xf_emit(%struct.nouveau_grctx* %303, i32 4, i32 0)
  %305 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %306 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @IS_NVA3F(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %289
  %311 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %312 = call i32 @xf_emit(%struct.nouveau_grctx* %311, i32 29, i32 0)
  br label %316

313:                                              ; preds = %289
  %314 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %315 = call i32 @xf_emit(%struct.nouveau_grctx* %314, i32 22, i32 0)
  br label %316

316:                                              ; preds = %313, %310
  %317 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %318 = call i32 @xf_emit(%struct.nouveau_grctx* %317, i32 1, i32 15)
  %319 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %320 = load i32, i32* %4, align 4
  %321 = sdiv i32 %320, 8
  %322 = sub nsw i32 %321, 1
  %323 = call i32 @xf_emit(%struct.nouveau_grctx* %319, i32 %322, i32 0)
  %324 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %325 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %326, 160
  br i1 %327, label %328, label %331

328:                                              ; preds = %316
  %329 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %330 = call i32 @xf_emit(%struct.nouveau_grctx* %329, i32 8, i32 0)
  br label %344

331:                                              ; preds = %316
  %332 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %333 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @IS_NVA3F(i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %339 = call i32 @xf_emit(%struct.nouveau_grctx* %338, i32 12, i32 0)
  br label %343

340:                                              ; preds = %331
  %341 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %342 = call i32 @xf_emit(%struct.nouveau_grctx* %341, i32 7, i32 0)
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %328
  %345 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %346 = call i32 @xf_emit(%struct.nouveau_grctx* %345, i32 10, i32 0)
  %347 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %348 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 160
  br i1 %350, label %351, label %352

351:                                              ; preds = %344
  store i32 12, i32* %5, align 4
  br label %353

352:                                              ; preds = %344
  store i32 4, i32* %5, align 4
  br label %353

353:                                              ; preds = %352, %351
  store i32 0, i32* %6, align 4
  br label %354

354:                                              ; preds = %374, %353
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* %5, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %377

358:                                              ; preds = %354
  %359 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %360 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @IS_NVA3F(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %366 = call i32 @xf_emit(%struct.nouveau_grctx* %365, i32 32, i32 0)
  br label %367

367:                                              ; preds = %364, %358
  %368 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %369 = call i32 @xf_emit(%struct.nouveau_grctx* %368, i32 512, i32 0)
  %370 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %371 = call i32 @xf_emit(%struct.nouveau_grctx* %370, i32 4, i32 0)
  %372 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %373 = call i32 @xf_emit(%struct.nouveau_grctx* %372, i32 4, i32 0)
  br label %374

374:                                              ; preds = %367
  %375 = load i32, i32* %6, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %6, align 4
  br label %354

377:                                              ; preds = %354
  %378 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %379 = call i32 @xf_emit(%struct.nouveau_grctx* %378, i32 1, i32 0)
  %380 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %381 = call i32 @xf_emit(%struct.nouveau_grctx* %380, i32 1, i32 15)
  %382 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sdiv i32 %383, 8
  %385 = sub nsw i32 %384, 1
  %386 = call i32 @xf_emit(%struct.nouveau_grctx* %382, i32 %385, i32 0)
  %387 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %388 = load i32, i32* %4, align 4
  %389 = sdiv i32 %388, 8
  %390 = call i32 @xf_emit(%struct.nouveau_grctx* %387, i32 %389, i32 0)
  %391 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %392 = call i32 @xf_emit(%struct.nouveau_grctx* %391, i32 1, i32 0)
  %393 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %394 = call i32 @xf_emit(%struct.nouveau_grctx* %393, i32 1, i32 0)
  %395 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %396 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = call i64 @IS_NVA3F(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %377
  %401 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %402 = call i32 @xf_emit(%struct.nouveau_grctx* %401, i32 7, i32 0)
  br label %406

403:                                              ; preds = %377
  %404 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %405 = call i32 @xf_emit(%struct.nouveau_grctx* %404, i32 5, i32 0)
  br label %406

406:                                              ; preds = %403, %400
  ret void
}

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
