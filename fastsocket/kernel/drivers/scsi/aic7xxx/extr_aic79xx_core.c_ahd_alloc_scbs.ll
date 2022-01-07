; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_scbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, %struct.scb_data }
%struct.scb_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scb = type { %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.scb*, %struct.scb*, %struct.scb*, %struct.scb*, i8*, i32* }
%struct.TYPE_2__ = type { %struct.scb_platform_data* }
%struct.scb_platform_data = type { %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.scb_platform_data*, %struct.scb_platform_data*, %struct.scb_platform_data*, %struct.scb_platform_data*, i8*, i32* }
%struct.hardware_scb = type { i32, i32 }
%struct.map_node = type { %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.map_node*, %struct.map_node*, %struct.map_node*, %struct.map_node*, i8*, i32* }

@AHD_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_SENSE_BUFSIZE = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@SCB_FLAG_NONE = common dso_local global i32 0, align 4
@AHD_SHOW_MEMORY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_alloc_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_alloc_scbs(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.map_node*, align 8
  %7 = alloca %struct.map_node*, align 8
  %8 = alloca %struct.map_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scb_platform_data*, align 8
  %20 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 2
  store %struct.scb_data* %22, %struct.scb_data** %3, align 8
  %23 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %24 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %485

29:                                               ; preds = %1
  %30 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %31 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 8
  %38 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %39 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %16, align 4
  %44 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %45 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %44, i32 0, i32 9
  %46 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %45)
  %47 = bitcast %struct.scb_platform_data* %46 to %struct.map_node*
  store %struct.map_node* %47, %struct.map_node** %6, align 8
  %48 = load %struct.map_node*, %struct.map_node** %6, align 8
  %49 = getelementptr inbounds %struct.map_node, %struct.map_node* %48, i32 0, i32 14
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to %struct.hardware_scb*
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %51, i64 %53
  store %struct.hardware_scb* %54, %struct.hardware_scb** %5, align 8
  %55 = load %struct.map_node*, %struct.map_node** %6, align 8
  %56 = getelementptr inbounds %struct.map_node, %struct.map_node* %55, i32 0, i32 13
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = getelementptr i8, i8* %57, i64 %60
  store i8* %61, i8** %11, align 8
  br label %123

62:                                               ; preds = %29
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = call %struct.scb_platform_data* @malloc(i32 112, i32 %63, i32 %64)
  %66 = bitcast %struct.scb_platform_data* %65 to %struct.map_node*
  store %struct.map_node* %66, %struct.map_node** %6, align 8
  %67 = load %struct.map_node*, %struct.map_node** %6, align 8
  %68 = icmp eq %struct.map_node* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %485

70:                                               ; preds = %62
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %73 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.map_node*, %struct.map_node** %6, align 8
  %76 = getelementptr inbounds %struct.map_node, %struct.map_node* %75, i32 0, i32 14
  %77 = bitcast i32** %76 to i8**
  %78 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %79 = load %struct.map_node*, %struct.map_node** %6, align 8
  %80 = getelementptr inbounds %struct.map_node, %struct.map_node* %79, i32 0, i32 2
  %81 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %71, i32 %74, i8** %77, i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.map_node*, %struct.map_node** %6, align 8
  %85 = bitcast %struct.map_node* %84 to %struct.scb_platform_data*
  %86 = load i32, i32* @M_DEVBUF, align 4
  %87 = call i32 @free(%struct.scb_platform_data* %85, i32 %86)
  br label %485

88:                                               ; preds = %70
  %89 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %90 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %89, i32 0, i32 9
  %91 = load %struct.map_node*, %struct.map_node** %6, align 8
  %92 = bitcast %struct.map_node* %91 to %struct.scb_platform_data*
  %93 = load i32, i32* @links, align 4
  %94 = call i32 @SLIST_INSERT_HEAD(i32* %90, %struct.scb_platform_data* %92, i32 %93)
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %96 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %97 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.map_node*, %struct.map_node** %6, align 8
  %100 = getelementptr inbounds %struct.map_node, %struct.map_node* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.map_node*, %struct.map_node** %6, align 8
  %103 = getelementptr inbounds %struct.map_node, %struct.map_node* %102, i32 0, i32 14
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load i32, i32* @ahd_dmamap_cb, align 4
  %107 = load %struct.map_node*, %struct.map_node** %6, align 8
  %108 = getelementptr inbounds %struct.map_node, %struct.map_node* %107, i32 0, i32 13
  %109 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %95, i32 %98, i32 %101, i32* %104, i32 %105, i32 %106, i8** %108, i32 0)
  %110 = load %struct.map_node*, %struct.map_node** %6, align 8
  %111 = getelementptr inbounds %struct.map_node, %struct.map_node* %110, i32 0, i32 14
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to %struct.hardware_scb*
  store %struct.hardware_scb* %113, %struct.hardware_scb** %5, align 8
  %114 = load %struct.map_node*, %struct.map_node** %6, align 8
  %115 = getelementptr inbounds %struct.map_node, %struct.map_node* %114, i32 0, i32 13
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %11, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = sext i32 %117 to i64
  %119 = udiv i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %122 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %88, %34
  %124 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %125 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %123
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %130 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %129)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %132 = call i32 @ahd_sglist_size(%struct.ahd_softc* %131)
  %133 = sdiv i32 %130, %132
  %134 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %135 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = call i32 @ahd_sglist_size(%struct.ahd_softc* %138)
  %140 = mul nsw i32 %137, %139
  store i32 %140, i32* %17, align 4
  %141 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %142 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %141, i32 0, i32 7
  %143 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %142)
  %144 = bitcast %struct.scb_platform_data* %143 to %struct.map_node*
  store %struct.map_node* %144, %struct.map_node** %7, align 8
  %145 = load %struct.map_node*, %struct.map_node** %7, align 8
  %146 = getelementptr inbounds %struct.map_node, %struct.map_node* %145, i32 0, i32 14
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32* %150, i32** %9, align 8
  %151 = load %struct.map_node*, %struct.map_node** %7, align 8
  %152 = getelementptr inbounds %struct.map_node, %struct.map_node* %151, i32 0, i32 13
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %153, i64 %155
  store i8* %156, i8** %12, align 8
  br label %219

157:                                              ; preds = %123
  %158 = load i32, i32* @M_DEVBUF, align 4
  %159 = load i32, i32* @M_NOWAIT, align 4
  %160 = call %struct.scb_platform_data* @malloc(i32 112, i32 %158, i32 %159)
  %161 = bitcast %struct.scb_platform_data* %160 to %struct.map_node*
  store %struct.map_node* %161, %struct.map_node** %7, align 8
  %162 = load %struct.map_node*, %struct.map_node** %7, align 8
  %163 = icmp eq %struct.map_node* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %485

165:                                              ; preds = %157
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %167 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %168 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.map_node*, %struct.map_node** %7, align 8
  %171 = getelementptr inbounds %struct.map_node, %struct.map_node* %170, i32 0, i32 14
  %172 = bitcast i32** %171 to i8**
  %173 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %174 = load %struct.map_node*, %struct.map_node** %7, align 8
  %175 = getelementptr inbounds %struct.map_node, %struct.map_node* %174, i32 0, i32 2
  %176 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %166, i32 %169, i8** %172, i32 %173, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %165
  %179 = load %struct.map_node*, %struct.map_node** %7, align 8
  %180 = bitcast %struct.map_node* %179 to %struct.scb_platform_data*
  %181 = load i32, i32* @M_DEVBUF, align 4
  %182 = call i32 @free(%struct.scb_platform_data* %180, i32 %181)
  br label %485

183:                                              ; preds = %165
  %184 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %185 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %184, i32 0, i32 7
  %186 = load %struct.map_node*, %struct.map_node** %7, align 8
  %187 = bitcast %struct.map_node* %186 to %struct.scb_platform_data*
  %188 = load i32, i32* @links, align 4
  %189 = call i32 @SLIST_INSERT_HEAD(i32* %185, %struct.scb_platform_data* %187, i32 %188)
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %191 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %192 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.map_node*, %struct.map_node** %7, align 8
  %195 = getelementptr inbounds %struct.map_node, %struct.map_node* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.map_node*, %struct.map_node** %7, align 8
  %198 = getelementptr inbounds %struct.map_node, %struct.map_node* %197, i32 0, i32 14
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %201 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %200)
  %202 = load i32, i32* @ahd_dmamap_cb, align 4
  %203 = load %struct.map_node*, %struct.map_node** %7, align 8
  %204 = getelementptr inbounds %struct.map_node, %struct.map_node* %203, i32 0, i32 13
  %205 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %190, i32 %193, i32 %196, i32* %199, i32 %201, i32 %202, i8** %204, i32 0)
  %206 = load %struct.map_node*, %struct.map_node** %7, align 8
  %207 = getelementptr inbounds %struct.map_node, %struct.map_node* %206, i32 0, i32 14
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %9, align 8
  %209 = load %struct.map_node*, %struct.map_node** %7, align 8
  %210 = getelementptr inbounds %struct.map_node, %struct.map_node* %209, i32 0, i32 13
  %211 = load i8*, i8** %210, align 8
  store i8* %211, i8** %12, align 8
  %212 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %213 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %212)
  %214 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %215 = call i32 @ahd_sglist_size(%struct.ahd_softc* %214)
  %216 = sdiv i32 %213, %215
  %217 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %218 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %183, %128
  %220 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %221 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %248

224:                                              ; preds = %219
  %225 = load i32, i32* @PAGE_SIZE, align 4
  %226 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %227 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %228 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %226, %229
  %231 = sub nsw i32 %225, %230
  store i32 %231, i32* %18, align 4
  %232 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %233 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %232, i32 0, i32 5
  %234 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %233)
  %235 = bitcast %struct.scb_platform_data* %234 to %struct.map_node*
  store %struct.map_node* %235, %struct.map_node** %8, align 8
  %236 = load %struct.map_node*, %struct.map_node** %8, align 8
  %237 = getelementptr inbounds %struct.map_node, %struct.map_node* %236, i32 0, i32 14
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32* %241, i32** %10, align 8
  %242 = load %struct.map_node*, %struct.map_node** %8, align 8
  %243 = getelementptr inbounds %struct.map_node, %struct.map_node* %242, i32 0, i32 13
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr i8, i8* %244, i64 %246
  store i8* %247, i8** %13, align 8
  br label %307

248:                                              ; preds = %219
  %249 = load i32, i32* @M_DEVBUF, align 4
  %250 = load i32, i32* @M_NOWAIT, align 4
  %251 = call %struct.scb_platform_data* @malloc(i32 112, i32 %249, i32 %250)
  %252 = bitcast %struct.scb_platform_data* %251 to %struct.map_node*
  store %struct.map_node* %252, %struct.map_node** %8, align 8
  %253 = load %struct.map_node*, %struct.map_node** %8, align 8
  %254 = icmp eq %struct.map_node* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %485

256:                                              ; preds = %248
  %257 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %258 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %259 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.map_node*, %struct.map_node** %8, align 8
  %262 = getelementptr inbounds %struct.map_node, %struct.map_node* %261, i32 0, i32 14
  %263 = bitcast i32** %262 to i8**
  %264 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %265 = load %struct.map_node*, %struct.map_node** %8, align 8
  %266 = getelementptr inbounds %struct.map_node, %struct.map_node* %265, i32 0, i32 2
  %267 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %257, i32 %260, i8** %263, i32 %264, i32* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %256
  %270 = load %struct.map_node*, %struct.map_node** %8, align 8
  %271 = bitcast %struct.map_node* %270 to %struct.scb_platform_data*
  %272 = load i32, i32* @M_DEVBUF, align 4
  %273 = call i32 @free(%struct.scb_platform_data* %271, i32 %272)
  br label %485

274:                                              ; preds = %256
  %275 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %276 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %275, i32 0, i32 5
  %277 = load %struct.map_node*, %struct.map_node** %8, align 8
  %278 = bitcast %struct.map_node* %277 to %struct.scb_platform_data*
  %279 = load i32, i32* @links, align 4
  %280 = call i32 @SLIST_INSERT_HEAD(i32* %276, %struct.scb_platform_data* %278, i32 %279)
  %281 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %282 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %283 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.map_node*, %struct.map_node** %8, align 8
  %286 = getelementptr inbounds %struct.map_node, %struct.map_node* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.map_node*, %struct.map_node** %8, align 8
  %289 = getelementptr inbounds %struct.map_node, %struct.map_node* %288, i32 0, i32 14
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* @PAGE_SIZE, align 4
  %292 = load i32, i32* @ahd_dmamap_cb, align 4
  %293 = load %struct.map_node*, %struct.map_node** %8, align 8
  %294 = getelementptr inbounds %struct.map_node, %struct.map_node* %293, i32 0, i32 13
  %295 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %281, i32 %284, i32 %287, i32* %290, i32 %291, i32 %292, i8** %294, i32 0)
  %296 = load %struct.map_node*, %struct.map_node** %8, align 8
  %297 = getelementptr inbounds %struct.map_node, %struct.map_node* %296, i32 0, i32 14
  %298 = load i32*, i32** %297, align 8
  store i32* %298, i32** %10, align 8
  %299 = load %struct.map_node*, %struct.map_node** %8, align 8
  %300 = getelementptr inbounds %struct.map_node, %struct.map_node* %299, i32 0, i32 13
  %301 = load i8*, i8** %300, align 8
  store i8* %301, i8** %13, align 8
  %302 = load i32, i32* @PAGE_SIZE, align 4
  %303 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %304 = sdiv i32 %302, %303
  %305 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %306 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 4
  br label %307

307:                                              ; preds = %274, %224
  %308 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %309 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %312 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @min(i32 %310, i32 %313)
  store i32 %314, i32* %14, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %317 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @min(i32 %315, i32 %318)
  store i32 %319, i32* %14, align 4
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %322 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %323 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 %321, %324
  %326 = call i32 @min(i32 %320, i32 %325)
  store i32 %326, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %327

327:                                              ; preds = %482, %307
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %14, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %485

331:                                              ; preds = %327
  %332 = load i32, i32* @M_DEVBUF, align 4
  %333 = load i32, i32* @M_NOWAIT, align 4
  %334 = call %struct.scb_platform_data* @malloc(i32 112, i32 %332, i32 %333)
  %335 = bitcast %struct.scb_platform_data* %334 to %struct.scb*
  store %struct.scb* %335, %struct.scb** %4, align 8
  %336 = load %struct.scb*, %struct.scb** %4, align 8
  %337 = icmp eq %struct.scb* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %331
  br label %485

339:                                              ; preds = %331
  %340 = load i32, i32* @M_DEVBUF, align 4
  %341 = load i32, i32* @M_NOWAIT, align 4
  %342 = call %struct.scb_platform_data* @malloc(i32 112, i32 %340, i32 %341)
  store %struct.scb_platform_data* %342, %struct.scb_platform_data** %19, align 8
  %343 = load %struct.scb_platform_data*, %struct.scb_platform_data** %19, align 8
  %344 = icmp eq %struct.scb_platform_data* %343, null
  br i1 %344, label %345, label %350

345:                                              ; preds = %339
  %346 = load %struct.scb*, %struct.scb** %4, align 8
  %347 = bitcast %struct.scb* %346 to %struct.scb_platform_data*
  %348 = load i32, i32* @M_DEVBUF, align 4
  %349 = call i32 @free(%struct.scb_platform_data* %347, i32 %348)
  br label %485

350:                                              ; preds = %339
  %351 = load %struct.scb_platform_data*, %struct.scb_platform_data** %19, align 8
  %352 = bitcast %struct.scb_platform_data* %351 to %struct.scb*
  %353 = load %struct.scb*, %struct.scb** %4, align 8
  %354 = getelementptr inbounds %struct.scb, %struct.scb* %353, i32 0, i32 12
  store %struct.scb* %352, %struct.scb** %354, align 8
  %355 = load %struct.map_node*, %struct.map_node** %6, align 8
  %356 = bitcast %struct.map_node* %355 to %struct.scb*
  %357 = load %struct.scb*, %struct.scb** %4, align 8
  %358 = getelementptr inbounds %struct.scb, %struct.scb* %357, i32 0, i32 11
  store %struct.scb* %356, %struct.scb** %358, align 8
  %359 = load %struct.map_node*, %struct.map_node** %7, align 8
  %360 = bitcast %struct.map_node* %359 to %struct.scb*
  %361 = load %struct.scb*, %struct.scb** %4, align 8
  %362 = getelementptr inbounds %struct.scb, %struct.scb* %361, i32 0, i32 10
  store %struct.scb* %360, %struct.scb** %362, align 8
  %363 = load %struct.map_node*, %struct.map_node** %8, align 8
  %364 = bitcast %struct.map_node* %363 to %struct.scb*
  %365 = load %struct.scb*, %struct.scb** %4, align 8
  %366 = getelementptr inbounds %struct.scb, %struct.scb* %365, i32 0, i32 9
  store %struct.scb* %364, %struct.scb** %366, align 8
  %367 = load i32*, i32** %9, align 8
  %368 = load %struct.scb*, %struct.scb** %4, align 8
  %369 = getelementptr inbounds %struct.scb, %struct.scb* %368, i32 0, i32 8
  store i32* %367, i32** %369, align 8
  %370 = load i32*, i32** %10, align 8
  %371 = load %struct.scb*, %struct.scb** %4, align 8
  %372 = getelementptr inbounds %struct.scb, %struct.scb* %371, i32 0, i32 7
  store i32* %370, i32** %372, align 8
  %373 = load i8*, i8** %13, align 8
  %374 = load %struct.scb*, %struct.scb** %4, align 8
  %375 = getelementptr inbounds %struct.scb, %struct.scb* %374, i32 0, i32 6
  store i8* %373, i8** %375, align 8
  %376 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %377 = call i32 @memset(%struct.hardware_scb* %376, i32 0, i32 8)
  %378 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %379 = load %struct.scb*, %struct.scb** %4, align 8
  %380 = getelementptr inbounds %struct.scb, %struct.scb* %379, i32 0, i32 1
  store %struct.hardware_scb* %378, %struct.hardware_scb** %380, align 8
  %381 = load i8*, i8** %11, align 8
  %382 = call i32 @ahd_htole32(i8* %381)
  %383 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %384 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 4
  %385 = load i8*, i8** %12, align 8
  %386 = load %struct.scb*, %struct.scb** %4, align 8
  %387 = getelementptr inbounds %struct.scb, %struct.scb* %386, i32 0, i32 5
  store i8* %385, i8** %387, align 8
  %388 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %389 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %350
  %395 = load %struct.scb*, %struct.scb** %4, align 8
  %396 = getelementptr inbounds %struct.scb, %struct.scb* %395, i32 0, i32 5
  %397 = load i8*, i8** %396, align 8
  %398 = getelementptr i8, i8* %397, i64 4
  store i8* %398, i8** %396, align 8
  br label %404

399:                                              ; preds = %350
  %400 = load %struct.scb*, %struct.scb** %4, align 8
  %401 = getelementptr inbounds %struct.scb, %struct.scb* %400, i32 0, i32 5
  %402 = load i8*, i8** %401, align 8
  %403 = getelementptr i8, i8* %402, i64 4
  store i8* %403, i8** %401, align 8
  br label %404

404:                                              ; preds = %399, %394
  %405 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %406 = load %struct.scb*, %struct.scb** %4, align 8
  %407 = getelementptr inbounds %struct.scb, %struct.scb* %406, i32 0, i32 4
  store %struct.ahd_softc* %405, %struct.ahd_softc** %407, align 8
  %408 = load i32, i32* @SCB_FLAG_NONE, align 4
  %409 = load %struct.scb*, %struct.scb** %4, align 8
  %410 = getelementptr inbounds %struct.scb, %struct.scb* %409, i32 0, i32 3
  store i32 %408, i32* %410, align 4
  %411 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %412 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @ahd_htole16(i32 %413)
  %415 = load %struct.scb*, %struct.scb** %4, align 8
  %416 = getelementptr inbounds %struct.scb, %struct.scb* %415, i32 0, i32 1
  %417 = load %struct.hardware_scb*, %struct.hardware_scb** %416, align 8
  %418 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %417, i32 0, i32 0
  store i32 %414, i32* %418, align 4
  %419 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %420 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = xor i32 %421, 256
  store i32 %422, i32* %20, align 4
  %423 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %424 = load i32, i32* %20, align 4
  %425 = call %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc* %423, i32 %424)
  %426 = load %struct.scb*, %struct.scb** %4, align 8
  %427 = getelementptr inbounds %struct.scb, %struct.scb* %426, i32 0, i32 0
  store %struct.TYPE_2__* %425, %struct.TYPE_2__** %427, align 8
  %428 = load %struct.scb*, %struct.scb** %4, align 8
  %429 = getelementptr inbounds %struct.scb, %struct.scb* %428, i32 0, i32 0
  %430 = load %struct.TYPE_2__*, %struct.TYPE_2__** %429, align 8
  %431 = icmp ne %struct.TYPE_2__* %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %404
  %433 = load %struct.scb*, %struct.scb** %4, align 8
  %434 = bitcast %struct.scb* %433 to %struct.scb_platform_data*
  %435 = load %struct.scb*, %struct.scb** %4, align 8
  %436 = getelementptr inbounds %struct.scb, %struct.scb* %435, i32 0, i32 0
  %437 = load %struct.TYPE_2__*, %struct.TYPE_2__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i32 0, i32 0
  store %struct.scb_platform_data* %434, %struct.scb_platform_data** %438, align 8
  br label %439

439:                                              ; preds = %432, %404
  %440 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %441 = load %struct.scb*, %struct.scb** %4, align 8
  %442 = bitcast %struct.scb* %441 to %struct.scb_platform_data*
  %443 = call i32 @ahd_free_scb(%struct.ahd_softc* %440, %struct.scb_platform_data* %442)
  %444 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %445 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %444, i32 1
  store %struct.hardware_scb* %445, %struct.hardware_scb** %5, align 8
  %446 = load i8*, i8** %11, align 8
  %447 = getelementptr i8, i8* %446, i64 8
  store i8* %447, i8** %11, align 8
  %448 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %449 = call i32 @ahd_sglist_size(%struct.ahd_softc* %448)
  %450 = load i32*, i32** %9, align 8
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i32, i32* %450, i64 %451
  store i32* %452, i32** %9, align 8
  %453 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %454 = call i32 @ahd_sglist_size(%struct.ahd_softc* %453)
  %455 = load i8*, i8** %12, align 8
  %456 = sext i32 %454 to i64
  %457 = getelementptr i8, i8* %455, i64 %456
  store i8* %457, i8** %12, align 8
  %458 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %459 = load i32*, i32** %10, align 8
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i32, i32* %459, i64 %460
  store i32* %461, i32** %10, align 8
  %462 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %463 = load i8*, i8** %13, align 8
  %464 = sext i32 %462 to i64
  %465 = getelementptr i8, i8* %463, i64 %464
  store i8* %465, i8** %13, align 8
  %466 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %467 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %467, align 4
  %470 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %471 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %472, -1
  store i32 %473, i32* %471, align 4
  %474 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %475 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, -1
  store i32 %477, i32* %475, align 4
  %478 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %479 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, -1
  store i32 %481, i32* %479, align 4
  br label %482

482:                                              ; preds = %439
  %483 = load i32, i32* %15, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %15, align 4
  br label %327

485:                                              ; preds = %28, %69, %83, %164, %178, %255, %269, %345, %338, %327
  ret void
}

declare dso_local %struct.scb_platform_data* @SLIST_FIRST(i32*) #1

declare dso_local %struct.scb_platform_data* @malloc(i32, i32, i32) #1

declare dso_local i64 @ahd_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @free(%struct.scb_platform_data*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.scb_platform_data*, i32) #1

declare dso_local i32 @ahd_dmamap_load(%struct.ahd_softc*, i32, i32, i32*, i32, i32, i8**, i32) #1

declare dso_local i32 @ahd_sglist_allocsize(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_sglist_size(%struct.ahd_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.hardware_scb*, i32, i32) #1

declare dso_local i32 @ahd_htole32(i8*) #1

declare dso_local i32 @ahd_htole16(i32) #1

declare dso_local %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
