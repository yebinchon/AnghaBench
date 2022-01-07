; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_prog_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_prog_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nva3_pm_state = type { i32, i32, i32*, i32*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_mem_exec_func = type { %struct.nva3_pm_state*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_device* }

@mclk_timing_set = common dso_local global i32 0, align 4
@mclk_clock_set = common dso_local global i32 0, align 4
@mclk_mrs = common dso_local global i32 0, align 4
@mclk_mrg = common dso_local global i32 0, align 4
@mclk_wait = common dso_local global i32 0, align 4
@mclk_refresh_self = common dso_local global i32 0, align 4
@mclk_refresh_auto = common dso_local global i32 0, align 4
@mclk_refresh = common dso_local global i32 0, align 4
@mclk_precharge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nva3_pm_state*)* @prog_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_mem(%struct.drm_device* %0, %struct.nva3_pm_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nva3_pm_state*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_mem_exec_func, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nva3_pm_state* %1, %struct.nva3_pm_state** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 0
  %12 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  store %struct.nva3_pm_state* %12, %struct.nva3_pm_state** %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 1
  %14 = load i32, i32* @mclk_timing_set, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 2
  %16 = load i32, i32* @mclk_clock_set, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 3
  %18 = load i32, i32* @mclk_mrs, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 4
  %20 = load i32, i32* @mclk_mrg, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 5
  %22 = load i32, i32* @mclk_wait, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 6
  %24 = load i32, i32* @mclk_refresh_self, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 7
  %26 = load i32, i32* @mclk_refresh_auto, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 8
  %28 = load i32, i32* @mclk_refresh, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 9
  %30 = load i32, i32* @mclk_precharge, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 10
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  store %struct.drm_device* %32, %struct.drm_device** %31, align 8
  %33 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %34 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 750000
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %41 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %40, i32 0, i32 0
  store i32 268435456, i32* %41, align 8
  %42 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %43 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %42, i32 0, i32 1
  store i32 572662306, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %46 = call i32 @nv_rd32(%struct.nouveau_device* %45, i32 16384)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  %51 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %52 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %58 = call i32 @nv_mask(%struct.nouveau_device* %57, i32 16680, i32 257, i32 257)
  %59 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %60 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %61 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @nv_wr32(%struct.nouveau_device* %59, i32 16388, i32 %63)
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = call i32 @nv_wr32(%struct.nouveau_device* %65, i32 16384, i32 %67)
  %69 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -17
  store i32 %71, i32* %7, align 4
  %72 = call i32 @nv_wr32(%struct.nouveau_device* %69, i32 16384, i32 %71)
  %73 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %74 = call i32 @nv_wait(%struct.nouveau_device* %73, i32 16384, i32 131072, i32 131072)
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, 16
  store i32 %77, i32* %7, align 4
  %78 = call i32 @nv_wr32(%struct.nouveau_device* %75, i32 16384, i32 %77)
  %79 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %80 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %81 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 20480, %82
  %84 = call i32 @nv_wr32(%struct.nouveau_device* %79, i32 16408, i32 %83)
  %85 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, 4
  store i32 %87, i32* %7, align 4
  %88 = call i32 @nv_wr32(%struct.nouveau_device* %85, i32 16384, i32 %87)
  br label %89

89:                                               ; preds = %56, %50
  br label %110

90:                                               ; preds = %44
  store i32 257, i32* %8, align 4
  %91 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %92 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %98 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %106

103:                                              ; preds = %90
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, 524288
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @nv_mask(%struct.nouveau_device* %107, i32 16744, i32 4141377, i32 %108)
  br label %110

110:                                              ; preds = %106, %89
  %111 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %112 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %117 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 16
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %125 = call i32 @nv_mask(%struct.nouveau_device* %124, i32 1118468, i32 1536, i32 0)
  br label %131

126:                                              ; preds = %115
  %127 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %128 = call i32 @nv_mask(%struct.nouveau_device* %127, i32 1118464, i32 1073741824, i32 1073741824)
  %129 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %130 = call i32 @nv_mask(%struct.nouveau_device* %129, i32 1118468, i32 384, i32 0)
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %110
  %133 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %134 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %139 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %147 = call i32 @nv_mask(%struct.nouveau_device* %146, i32 1049088, i32 2048, i32 0)
  br label %148

148:                                              ; preds = %145, %137, %132
  %149 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %150 = call i32 @nv_wr32(%struct.nouveau_device* %149, i32 6361600, i32 13056)
  %151 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %152 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 16
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %160 = call i32 @nv_wr32(%struct.nouveau_device* %159, i32 1118464, i32 1275199488)
  br label %161

161:                                              ; preds = %158, %148
  %162 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %163 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %162, i32 0, i32 5
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = call i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func* %6, %struct.TYPE_4__* %164)
  %166 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %167 = call i32 @nv_wr32(%struct.nouveau_device* %166, i32 6361600, i32 13104)
  %168 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %169 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %161
  %173 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %174 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 2
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %182 = call i32 @nv_mask(%struct.nouveau_device* %181, i32 1049088, i32 2048, i32 2048)
  br label %183

183:                                              ; preds = %180, %172, %161
  %184 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %185 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %190 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 16
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %198 = call i32 @nv_mask(%struct.nouveau_device* %197, i32 1118468, i32 384, i32 384)
  %199 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %200 = call i32 @nv_mask(%struct.nouveau_device* %199, i32 1118464, i32 1073741824, i32 0)
  br label %204

201:                                              ; preds = %188
  %202 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %203 = call i32 @nv_mask(%struct.nouveau_device* %202, i32 1118468, i32 1536, i32 1536)
  br label %204

204:                                              ; preds = %201, %196
  br label %205

205:                                              ; preds = %204, %183
  %206 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %207 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %213 = call i32 @nv_mask(%struct.nouveau_device* %212, i32 16744, i32 1, i32 0)
  %214 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %215 = call i32 @nv_mask(%struct.nouveau_device* %214, i32 16744, i32 256, i32 0)
  br label %223

216:                                              ; preds = %205
  %217 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %218 = call i32 @nv_mask(%struct.nouveau_device* %217, i32 16384, i32 1, i32 0)
  %219 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %220 = call i32 @nv_mask(%struct.nouveau_device* %219, i32 16680, i32 1, i32 0)
  %221 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %222 = call i32 @nv_mask(%struct.nouveau_device* %221, i32 16680, i32 256, i32 0)
  br label %223

223:                                              ; preds = %216, %211
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
