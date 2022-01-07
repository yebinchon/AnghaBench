; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_unk14xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_gene_unk14xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_gene_unk14xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_gene_unk14xx(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %4 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %4, i32 0, i32 0
  %6 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 80
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %13 = call i32 @xf_emit(%struct.nouveau_grctx* %12, i32 5, i32 0)
  %14 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %15 = call i32 @xf_emit(%struct.nouveau_grctx* %14, i32 1, i32 527380)
  %16 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %17 = call i32 @xf_emit(%struct.nouveau_grctx* %16, i32 1, i32 0)
  %18 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %19 = call i32 @xf_emit(%struct.nouveau_grctx* %18, i32 1, i32 0)
  %20 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %21 = call i32 @xf_emit(%struct.nouveau_grctx* %20, i32 1, i32 2052)
  %22 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %23 = call i32 @xf_emit(%struct.nouveau_grctx* %22, i32 1, i32 0)
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nouveau_grctx* %24, i32 2, i32 4)
  %26 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %27 = call i32 @xf_emit(%struct.nouveau_grctx* %26, i32 1, i32 135269394)
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nouveau_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nouveau_grctx* %31, i32 1, i32 4)
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nouveau_grctx* %33, i32 1, i32 4)
  %35 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nouveau_grctx* %35, i32 1, i32 0)
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 16)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nouveau_grctx* %39, i32 1, i32 0)
  %41 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 80
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nouveau_grctx* %46, i32 1, i32 0)
  br label %48

48:                                               ; preds = %45, %28
  %49 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nouveau_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nouveau_grctx* %51, i32 1, i32 0)
  %53 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nouveau_grctx* %53, i32 1, i32 2052)
  %55 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nouveau_grctx* %55, i32 1, i32 1)
  %57 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nouveau_grctx* %57, i32 1, i32 26)
  %59 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 80
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @xf_emit(%struct.nouveau_grctx* %64, i32 1, i32 127)
  br label %66

66:                                               ; preds = %63, %48
  %67 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nouveau_grctx* %67, i32 1, i32 0)
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nouveau_grctx* %69, i32 1, i32 1)
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nouveau_grctx* %71, i32 1, i32 527380)
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nouveau_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nouveau_grctx* %75, i32 1, i32 135269394)
  %77 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nouveau_grctx* %77, i32 1, i32 4)
  %79 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nouveau_grctx* %79, i32 1, i32 4)
  %81 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %82 = call i32 @xf_emit(%struct.nouveau_grctx* %81, i32 1, i32 0)
  %83 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nouveau_grctx* %83, i32 1, i32 16)
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nouveau_grctx* %85, i32 1, i32 0)
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nouveau_grctx* %87, i32 1, i32 0)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nouveau_grctx* %89, i32 1, i32 0)
  %91 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nouveau_grctx* %91, i32 1, i32 1)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nouveau_grctx* %93, i32 1, i32 135269394)
  %95 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nouveau_grctx* %95, i32 4, i32 0)
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nouveau_grctx* %97, i32 1, i32 0)
  %99 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %100 = call i32 @xf_emit(%struct.nouveau_grctx* %99, i32 1, i32 0)
  %101 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %102 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 80
  br i1 %104, label %105, label %108

105:                                              ; preds = %66
  %106 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %107 = call i32 @xf_emit(%struct.nouveau_grctx* %106, i32 1, i32 1023)
  br label %111

108:                                              ; preds = %66
  %109 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %110 = call i32 @xf_emit(%struct.nouveau_grctx* %109, i32 1, i32 2047)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %113 = call i32 @xf_emit(%struct.nouveau_grctx* %112, i32 1, i32 527380)
  %114 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %115 = call i32 @xf_emit(%struct.nouveau_grctx* %114, i32 1, i32 0)
  %116 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %117 = call i32 @xf_emit(%struct.nouveau_grctx* %116, i32 48, i32 0)
  %118 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %119 = call i32 @xf_emit(%struct.nouveau_grctx* %118, i32 3, i32 0)
  %120 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %121 = call i32 @xf_emit(%struct.nouveau_grctx* %120, i32 3, i32 0)
  %122 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %123 = call i32 @xf_emit(%struct.nouveau_grctx* %122, i32 1, i32 0)
  %124 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %125 = call i32 @xf_emit(%struct.nouveau_grctx* %124, i32 1, i32 1)
  %126 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %127 = call i32 @xf_emit(%struct.nouveau_grctx* %126, i32 1, i32 0)
  %128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %129 = call i32 @xf_emit(%struct.nouveau_grctx* %128, i32 1, i32 0)
  %130 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %131 = call i32 @xf_emit(%struct.nouveau_grctx* %130, i32 1, i32 16)
  %132 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %133 = call i32 @xf_emit(%struct.nouveau_grctx* %132, i32 1, i32 0)
  %134 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %135 = call i32 @xf_emit(%struct.nouveau_grctx* %134, i32 48, i32 0)
  %136 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %137 = call i32 @xf_emit(%struct.nouveau_grctx* %136, i32 3, i32 0)
  %138 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nouveau_grctx* %138, i32 3, i32 0)
  %140 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %141 = call i32 @xf_emit(%struct.nouveau_grctx* %140, i32 1, i32 0)
  %142 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %143 = call i32 @xf_emit(%struct.nouveau_grctx* %142, i32 2, i32 136)
  %144 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %145 = call i32 @xf_emit(%struct.nouveau_grctx* %144, i32 1, i32 0)
  %146 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %147 = call i32 @xf_emit(%struct.nouveau_grctx* %146, i32 1, i32 0)
  %148 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %149 = call i32 @xf_emit(%struct.nouveau_grctx* %148, i32 1, i32 4)
  %150 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %151 = call i32 @xf_emit(%struct.nouveau_grctx* %150, i32 2, i32 0)
  %152 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %153 = call i32 @xf_emit(%struct.nouveau_grctx* %152, i32 2, i32 0)
  %154 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %155 = call i32 @xf_emit(%struct.nouveau_grctx* %154, i32 1, i32 0)
  %156 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %157 = call i32 @xf_emit(%struct.nouveau_grctx* %156, i32 16, i32 0)
  %158 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %159 = call i32 @xf_emit(%struct.nouveau_grctx* %158, i32 1, i32 0)
  %160 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %161 = call i32 @xf_emit(%struct.nouveau_grctx* %160, i32 1, i32 38)
  %162 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %163 = call i32 @xf_emit(%struct.nouveau_grctx* %162, i32 1, i32 0)
  %164 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %165 = call i32 @xf_emit(%struct.nouveau_grctx* %164, i32 1, i32 0)
  %166 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %167 = call i32 @xf_emit(%struct.nouveau_grctx* %166, i32 1, i32 1065353216)
  %168 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %169 = call i32 @xf_emit(%struct.nouveau_grctx* %168, i32 1, i32 0)
  %170 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %171 = call i32 @xf_emit(%struct.nouveau_grctx* %170, i32 1, i32 0)
  %172 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %173 = call i32 @xf_emit(%struct.nouveau_grctx* %172, i32 1, i32 0)
  %174 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %175 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @IS_NVA3F(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %111
  %180 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %181 = call i32 @xf_emit(%struct.nouveau_grctx* %180, i32 1, i32 0)
  br label %182

182:                                              ; preds = %179, %111
  %183 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %184 = call i32 @xf_emit(%struct.nouveau_grctx* %183, i32 1, i32 26)
  %185 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %186 = call i32 @xf_emit(%struct.nouveau_grctx* %185, i32 1, i32 16)
  %187 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %188 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 80
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %193 = call i32 @xf_emit(%struct.nouveau_grctx* %192, i32 1, i32 0)
  %194 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %195 = call i32 @xf_emit(%struct.nouveau_grctx* %194, i32 1, i32 0)
  %196 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %197 = call i32 @xf_emit(%struct.nouveau_grctx* %196, i32 1, i32 0)
  br label %198

198:                                              ; preds = %191, %182
  %199 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %200 = call i32 @xf_emit(%struct.nouveau_grctx* %199, i32 32, i32 0)
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
  %212 = call i32 @xf_emit(%struct.nouveau_grctx* %211, i32 1, i32 82)
  %213 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %214 = call i32 @xf_emit(%struct.nouveau_grctx* %213, i32 1, i32 0)
  %215 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %216 = call i32 @xf_emit(%struct.nouveau_grctx* %215, i32 1, i32 38)
  %217 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %218 = call i32 @xf_emit(%struct.nouveau_grctx* %217, i32 1, i32 0)
  %219 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %220 = call i32 @xf_emit(%struct.nouveau_grctx* %219, i32 1, i32 4)
  %221 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %222 = call i32 @xf_emit(%struct.nouveau_grctx* %221, i32 1, i32 4)
  %223 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %224 = call i32 @xf_emit(%struct.nouveau_grctx* %223, i32 1, i32 0)
  %225 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %226 = call i32 @xf_emit(%struct.nouveau_grctx* %225, i32 1, i32 26)
  %227 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %228 = call i32 @xf_emit(%struct.nouveau_grctx* %227, i32 1, i32 0)
  %229 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %230 = call i32 @xf_emit(%struct.nouveau_grctx* %229, i32 1, i32 0)
  %231 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %232 = call i32 @xf_emit(%struct.nouveau_grctx* %231, i32 1, i32 16776960)
  %233 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %234 = call i32 @xf_emit(%struct.nouveau_grctx* %233, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
