; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_range_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i32, i64, i64, %struct.iommu_pool*, i32, %struct.iommu_pool }
%struct.iommu_pool = type { i64, i64, i64, i32 }

@DMA_ERROR_CODE = common dso_local global i64 0, align 8
@iommu_pool_hash = common dso_local global i32 0, align 4
@IOMMU_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i64, i64*, i64, i32)* @iommu_range_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_range_alloc(%struct.device* %0, %struct.iommu_table* %1, i64 %2, i64* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.iommu_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.iommu_pool*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 15
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 64, %28
  %30 = zext i32 %29 to i64
  %31 = lshr i64 -1, %30
  store i64 %31, i64* %20, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = call i64 (...) @printk_ratelimit()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @WARN_ON(i32 1)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %43, i64* %7, align 8
  br label %275

44:                                               ; preds = %6
  %45 = load i32, i32* @iommu_pool_hash, align 4
  %46 = call i32 @__raw_get_cpu_var(i32 %45)
  %47 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %48 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %46, %50
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %56 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %55, i32 0, i32 5
  store %struct.iommu_pool* %56, %struct.iommu_pool** %24, align 8
  br label %64

57:                                               ; preds = %44
  %58 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %59 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %58, i32 0, i32 3
  %60 = load %struct.iommu_pool*, %struct.iommu_pool** %59, align 8
  %61 = load i32, i32* %23, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %60, i64 %62
  store %struct.iommu_pool* %63, %struct.iommu_pool** %24, align 8
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %66 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %65, i32 0, i32 3
  %67 = load i64, i64* %22, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %205, %191, %64
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i64*, i64** %11, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i64*, i64** %11, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %83 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %90 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %16, align 8
  br label %100

96:                                               ; preds = %86, %79, %75, %72, %69
  %97 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %98 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %102 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %17, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %109 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %16, align 8
  br label %111

111:                                              ; preds = %107, %100
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %114 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  %117 = load i64, i64* %12, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %111
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %122 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %120, %123
  %125 = add i64 %124, 1
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %12, align 8
  %128 = and i64 %126, %127
  %129 = load i64, i64* %17, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %19, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %131, %119
  %135 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %136 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %135, i32 0, i32 3
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %139 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %138, i32 0, i32 3
  %140 = load %struct.iommu_pool*, %struct.iommu_pool** %139, align 8
  %141 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %140, i64 0
  store %struct.iommu_pool* %141, %struct.iommu_pool** %24, align 8
  %142 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %143 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %142, i32 0, i32 3
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %146 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %16, align 8
  br label %152

148:                                              ; preds = %131
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %16, align 8
  %151 = and i64 %150, %149
  store i64 %151, i64* %16, align 8
  br label %152

152:                                              ; preds = %148, %134
  br label %153

153:                                              ; preds = %152, %111
  %154 = load %struct.device*, %struct.device** %8, align 8
  %155 = icmp ne %struct.device* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.device*, %struct.device** %8, align 8
  %158 = call i64 @dma_get_seg_boundary(%struct.device* %157)
  %159 = add i64 %158, 1
  %160 = load i32, i32* @IOMMU_PAGE_SHIFT, align 4
  %161 = shl i32 1, %160
  %162 = call i64 @ALIGN(i64 %159, i32 %161)
  store i64 %162, i64* %21, align 8
  br label %167

163:                                              ; preds = %153
  %164 = load i32, i32* @IOMMU_PAGE_SHIFT, align 4
  %165 = shl i32 1, %164
  %166 = call i64 @ALIGN(i64 4294967296, i32 %165)
  store i64 %166, i64* %21, align 8
  br label %167

167:                                              ; preds = %163, %156
  %168 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %169 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %175 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %21, align 8
  %178 = load i32, i32* @IOMMU_PAGE_SHIFT, align 4
  %179 = zext i32 %178 to i64
  %180 = lshr i64 %177, %179
  %181 = load i64, i64* %20, align 8
  %182 = call i64 @iommu_area_alloc(i32 %170, i64 %171, i64 %172, i64 %173, i64 %176, i64 %180, i64 %181)
  store i64 %182, i64* %14, align 8
  %183 = load i64, i64* %14, align 8
  %184 = icmp eq i64 %183, -1
  br i1 %184, label %185, label %238

185:                                              ; preds = %167
  %186 = load i32, i32* %19, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i64 @likely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %193 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %196 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %69

199:                                              ; preds = %185
  %200 = load i32, i32* %19, align 4
  %201 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %202 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sle i32 %200, %203
  br i1 %204, label %205, label %232

205:                                              ; preds = %199
  %206 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %207 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %206, i32 0, i32 3
  %208 = call i32 @spin_unlock(i32* %207)
  %209 = load i32, i32* %23, align 4
  %210 = add i32 %209, 1
  %211 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %212 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  %215 = and i32 %210, %214
  store i32 %215, i32* %23, align 4
  %216 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %217 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %216, i32 0, i32 3
  %218 = load %struct.iommu_pool*, %struct.iommu_pool** %217, align 8
  %219 = load i32, i32* %23, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %218, i64 %220
  store %struct.iommu_pool* %221, %struct.iommu_pool** %24, align 8
  %222 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %223 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %222, i32 0, i32 3
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %226 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %229 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %19, align 4
  br label %69

232:                                              ; preds = %199
  %233 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %234 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %233, i32 0, i32 3
  %235 = load i64, i64* %22, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  %237 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %237, i64* %7, align 8
  br label %275

238:                                              ; preds = %167
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* %10, align 8
  %241 = add i64 %239, %240
  store i64 %241, i64* %15, align 8
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load i64, i64* %15, align 8
  %246 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %247 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  br label %263

248:                                              ; preds = %238
  %249 = load i64, i64* %15, align 8
  %250 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %251 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %249, %252
  %254 = sub i64 %253, 1
  %255 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %256 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = sub i64 %257, 1
  %259 = xor i64 %258, -1
  %260 = and i64 %254, %259
  %261 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %262 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  br label %263

263:                                              ; preds = %248, %244
  %264 = load i64*, i64** %11, align 8
  %265 = icmp ne i64* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i64, i64* %15, align 8
  %268 = load i64*, i64** %11, align 8
  store i64 %267, i64* %268, align 8
  br label %269

269:                                              ; preds = %266, %263
  %270 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %271 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %270, i32 0, i32 3
  %272 = load i64, i64* %22, align 8
  %273 = call i32 @spin_unlock_irqrestore(i32* %271, i64 %272)
  %274 = load i64, i64* %14, align 8
  store i64 %274, i64* %7, align 8
  br label %275

275:                                              ; preds = %269, %232, %42
  %276 = load i64, i64* %7, align 8
  ret i64 %276
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__raw_get_cpu_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
