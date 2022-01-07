; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_new_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_new_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i64, i32 }
%struct.dma_ops_domain = type { i32, %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32** }

@APERTURE_RANGE_SHIFT = common dso_local global i32 0, align 4
@APERTURE_MAX_RANGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APERTURE_RANGE_PAGES = common dso_local global i32 0, align 4
@PM_MAP_4k = common dso_local global i32 0, align 4
@APERTURE_RANGE_SIZE = common dso_local global i32 0, align 4
@MSI_ADDR_BASE_LO = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, %struct.dma_ops_domain*, i32, i32)* @alloc_new_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_new_range(%struct.amd_iommu* %0, %struct.dma_ops_domain* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd_iommu*, align 8
  %7 = alloca %struct.dma_ops_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %6, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %24 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @APERTURE_RANGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @APERTURE_MAX_RANGES, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %290

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.TYPE_3__* @kzalloc(i32 4, i32 %35)
  %37 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %38 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %44 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %290

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @get_zeroed_page(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %59 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %57, i8** %65, align 8
  %66 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %67 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %54
  br label %259

77:                                               ; preds = %54
  %78 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %79 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %82 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %83, i64 %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %80, i32* %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %77
  %92 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %93 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %13, align 8
  %96 = load i32, i32* @APERTURE_RANGE_PAGES, align 4
  %97 = sdiv i32 %96, 512
  store i32 %97, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %131, %91
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %98
  %103 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %104 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %103, i32 0, i32 2
  %105 = load i64, i64* %13, align 8
  %106 = load i32, i32* @PM_MAP_4k, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32* @alloc_pte(i32* %104, i64 %105, i32 %106, i32** %17, i32 %107)
  store i32* %108, i32** %16, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  br label %259

112:                                              ; preds = %102
  %113 = load i32*, i32** %17, align 8
  %114 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %115 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %116, i64 %118
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* %113, i32** %125, align 8
  %126 = load i32, i32* @APERTURE_RANGE_SIZE, align 4
  %127 = sdiv i32 %126, 64
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %13, align 8
  br label %131

131:                                              ; preds = %112
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %98

134:                                              ; preds = %98
  br label %135

135:                                              ; preds = %134, %77
  %136 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %137 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %12, align 8
  %140 = load i32, i32* @APERTURE_RANGE_SIZE, align 4
  %141 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %142 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @MSI_ADDR_BASE_LO, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %135
  %149 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %150 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @MSI_ADDR_BASE_LO, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = load i64, i64* @MSI_ADDR_BASE_LO, align 8
  %157 = load i64, i64* @PAGE_SIZE, align 8
  %158 = call i32 @iommu_num_pages(i64 %156, i32 65536, i64 %157)
  store i32 %158, i32* %19, align 4
  %159 = load i64, i64* @MSI_ADDR_BASE_LO, align 8
  %160 = load i64, i64* @PAGE_SHIFT, align 8
  %161 = lshr i64 %159, %160
  store i64 %161, i64* %18, align 8
  %162 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %163 = load i64, i64* %18, align 8
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @dma_ops_reserve_addresses(%struct.dma_ops_domain* %162, i64 %163, i32 %164)
  br label %166

166:                                              ; preds = %155, %148, %135
  %167 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %168 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %213

171:                                              ; preds = %166
  %172 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %173 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %176 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %177, i64 %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = icmp uge i64 %174, %184
  br i1 %185, label %186, label %213

186:                                              ; preds = %171
  %187 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %188 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %191 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %189, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %186
  %196 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %197 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PAGE_SHIFT, align 8
  %200 = lshr i64 %198, %199
  store i64 %200, i64* %20, align 8
  %201 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %202 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %205 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* @PAGE_SIZE, align 8
  %208 = call i32 @iommu_num_pages(i64 %203, i32 %206, i64 %207)
  store i32 %208, i32* %21, align 4
  %209 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %210 = load i64, i64* %20, align 8
  %211 = load i32, i32* %21, align 4
  %212 = call i32 @dma_ops_reserve_addresses(%struct.dma_ops_domain* %209, i64 %210, i32 %211)
  br label %213

213:                                              ; preds = %195, %186, %171, %166
  %214 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %215 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %214, i32 0, i32 1
  %216 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %216, i64 %218
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %11, align 8
  br label %224

224:                                              ; preds = %251, %213
  %225 = load i64, i64* %11, align 8
  %226 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %227 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = icmp ult i64 %225, %229
  br i1 %230, label %231, label %255

231:                                              ; preds = %224
  %232 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %233 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %232, i32 0, i32 2
  %234 = load i64, i64* %11, align 8
  %235 = load i32, i32* @PM_MAP_4k, align 4
  %236 = call i32* @fetch_pte(i32* %233, i64 %234, i32 %235)
  store i32* %236, i32** %22, align 8
  %237 = load i32*, i32** %22, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %231
  %240 = load i32*, i32** %22, align 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @IOMMU_PTE_PRESENT(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239, %231
  br label %251

245:                                              ; preds = %239
  %246 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %247 = load i64, i64* %11, align 8
  %248 = load i64, i64* @PAGE_SHIFT, align 8
  %249 = lshr i64 %247, %248
  %250 = call i32 @dma_ops_reserve_addresses(%struct.dma_ops_domain* %246, i64 %249, i32 1)
  br label %251

251:                                              ; preds = %245, %244
  %252 = load i64, i64* @PAGE_SIZE, align 8
  %253 = load i64, i64* %11, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %11, align 8
  br label %224

255:                                              ; preds = %224
  %256 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %257 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %256, i32 0, i32 2
  %258 = call i32 @update_domain(i32* %257)
  store i32 0, i32* %5, align 4
  br label %290

259:                                              ; preds = %111, %76
  %260 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %261 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %260, i32 0, i32 2
  %262 = call i32 @update_domain(i32* %261)
  %263 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %264 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %263, i32 0, i32 1
  %265 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %265, i64 %267
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = ptrtoint i8* %271 to i64
  %273 = call i32 @free_page(i64 %272)
  %274 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %275 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %274, i32 0, i32 1
  %276 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %276, i64 %278
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %279, align 8
  %281 = call i32 @kfree(%struct.TYPE_3__* %280)
  %282 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %283 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %282, i32 0, i32 1
  %284 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %284, i64 %286
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %287, align 8
  %288 = load i32, i32* @ENOMEM, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %259, %255, %51, %31
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32* @alloc_pte(i32*, i64, i32, i32**, i32) #1

declare dso_local i32 @iommu_num_pages(i64, i32, i64) #1

declare dso_local i32 @dma_ops_reserve_addresses(%struct.dma_ops_domain*, i64, i32) #1

declare dso_local i32* @fetch_pte(i32*, i64, i32) #1

declare dso_local i32 @IOMMU_PTE_PRESENT(i32) #1

declare dso_local i32 @update_domain(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
