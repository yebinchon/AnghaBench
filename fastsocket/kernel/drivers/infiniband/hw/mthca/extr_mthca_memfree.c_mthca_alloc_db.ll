; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.mthca_db_page*, i32 }
%struct.mthca_db_page = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_db(%struct.mthca_dev* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mthca_db_page*, align 8
  %16 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %41 [
    i32 132, label %23
    i32 129, label %23
    i32 131, label %29
    i32 130, label %29
    i32 128, label %29
  ]

23:                                               ; preds = %4, %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %44

29:                                               ; preds = %4, %4, %4
  store i32 1, i32* %9, align 4
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %263

44:                                               ; preds = %29, %23
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %86, %44
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load %struct.mthca_db_page*, %struct.mthca_db_page** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %55, i64 %57
  %59 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %50
  %63 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %64 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load %struct.mthca_db_page*, %struct.mthca_db_page** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %67, i64 %69
  %71 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %74 = call i32 @bitmap_full(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %62
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load %struct.mthca_db_page*, %struct.mthca_db_page** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %81, i64 %83
  store %struct.mthca_db_page* %84, %struct.mthca_db_page** %15, align 8
  br label %220

85:                                               ; preds = %62, %50
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %13, align 4
  br label %46

90:                                               ; preds = %46
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %118, %90
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %98 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load %struct.mthca_db_page*, %struct.mthca_db_page** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %101, i64 %103
  %105 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %96
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %110 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load %struct.mthca_db_page*, %struct.mthca_db_page** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %113, i64 %115
  store %struct.mthca_db_page* %116, %struct.mthca_db_page** %15, align 8
  br label %164

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %92

122:                                              ; preds = %92
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %124 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %129 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp sge i32 %127, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %16, align 4
  br label %263

138:                                              ; preds = %122
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %143 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %155

148:                                              ; preds = %138
  %149 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %150 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %141
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %157 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load %struct.mthca_db_page*, %struct.mthca_db_page** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %160, i64 %162
  store %struct.mthca_db_page* %163, %struct.mthca_db_page** %15, align 8
  br label %164

164:                                              ; preds = %155, %108
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %166 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %170 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %171 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %170, i32 0, i32 2
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i32* @dma_alloc_coherent(i32* %168, i32 %169, i32* %171, i32 %172)
  %174 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %175 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %174, i32 0, i32 0
  store i32* %173, i32** %175, align 8
  %176 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %177 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %164
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %16, align 4
  br label %263

183:                                              ; preds = %164
  %184 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %185 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %188 = call i32 @memset(i32* %186, i32 0, i32 %187)
  %189 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %190 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %191 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %194 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %195 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %194, i32 0, i32 2
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %193, i32* %195, i32 %196)
  %198 = call i32 @mthca_MAP_ICM_page(%struct.mthca_dev* %189, i32 %192, i32 %197)
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %183
  %202 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %203 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %202, i32 0, i32 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %207 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %208 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %211 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dma_free_coherent(i32* %205, i32 %206, i32* %209, i32 %212)
  br label %263

214:                                              ; preds = %183
  %215 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %216 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %219 = call i32 @bitmap_zero(i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %76
  %221 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %222 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %225 = call i32 @find_first_zero_bit(i32 %223, i32 %224)
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %228 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @set_bit(i32 %226, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  %234 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* %14, align 4
  %237 = sub nsw i32 %235, %236
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %233, %220
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %241, %242
  store i32 %243, i32* %16, align 4
  %244 = load i32, i32* %7, align 4
  %245 = shl i32 %244, 8
  %246 = load i32, i32* %6, align 4
  %247 = shl i32 %246, 5
  %248 = or i32 %245, %247
  %249 = call i32 @cpu_to_be64(i32 %248)
  %250 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %251 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  %256 = load %struct.mthca_db_page*, %struct.mthca_db_page** %15, align 8
  %257 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32**, i32*** %8, align 8
  store i32* %261, i32** %262, align 8
  br label %263

263:                                              ; preds = %238, %201, %180, %135, %41
  %264 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %265 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %264, i32 0, i32 0
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = call i32 @mutex_unlock(i32* %267)
  %269 = load i32, i32* %16, align 4
  ret i32 %269
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_full(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mthca_MAP_ICM_page(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
