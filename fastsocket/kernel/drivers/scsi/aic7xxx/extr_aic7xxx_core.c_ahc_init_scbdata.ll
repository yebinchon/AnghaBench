; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init_scbdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.scb_data* }
%struct.scb_data = type { i64, i64, %struct.scb*, i32, i32, i32, %struct.scb*, i32, i32, i32, i32, i32, %struct.scb*, i32, i32 }
%struct.scb = type { i32 }

@AHC_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No SCB space found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ahc_dmamap_cb = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ahc_init_scbdata - Unable to allocate initial scbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_init_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_init_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 2
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %4, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %9 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %8, i32 0, i32 14
  %10 = call i32 @SLIST_INIT(i32* %9)
  %11 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %12 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %11, i32 0, i32 13
  %13 = call i32 @SLIST_INIT(i32* %12)
  %14 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i64 @malloc(i32 %17, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.scb*
  %22 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %23 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %22, i32 0, i32 12
  store %struct.scb* %21, %struct.scb** %23, align 8
  %24 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %25 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %24, i32 0, i32 12
  %26 = load %struct.scb*, %struct.scb** %25, align 8
  %27 = icmp eq %struct.scb* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %226

30:                                               ; preds = %1
  %31 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %32 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %31, i32 0, i32 12
  %33 = load %struct.scb*, %struct.scb** %32, align 8
  %34 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.scb* %33, i32 0, i32 %37)
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %40 = call i64 @ahc_probe_scbs(%struct.ahc_softc* %39)
  %41 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %42 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 2
  %45 = load %struct.scb_data*, %struct.scb_data** %44, align 8
  %46 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %51 = call i8* @ahc_name(%struct.ahc_softc* %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %226

54:                                               ; preds = %30
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %62 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %63 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %68 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %69 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %68, i32 0, i32 11
  %70 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %55, i32 %58, i32 1, i64 %60, i64 %61, i32 %62, i32* null, i32* null, i32 %66, i32 1, i32 %67, i32 0, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %224

73:                                               ; preds = %54
  %74 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %75 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %79 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %80 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %83 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %82, i32 0, i32 2
  %84 = bitcast %struct.scb** %83 to i8**
  %85 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %86 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %87 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %86, i32 0, i32 10
  %88 = call i64 @ahc_dmamem_alloc(%struct.ahc_softc* %78, i32 %81, i8** %84, i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %224

91:                                               ; preds = %73
  %92 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %93 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %97 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %98 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %101 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %104 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %103, i32 0, i32 2
  %105 = load %struct.scb*, %struct.scb** %104, align 8
  %106 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @ahc_dmamap_cb, align 4
  %111 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %112 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %111, i32 0, i32 9
  %113 = call i32 @ahc_dmamap_load(%struct.ahc_softc* %96, i32 %99, i32 %102, %struct.scb* %105, i32 %109, i32 %110, i32* %112, i32 0)
  %114 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %115 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %123 = add nsw i64 %122, 1
  %124 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %125 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %126 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %131 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %132 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %131, i32 0, i32 8
  %133 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %118, i32 %121, i32 1, i64 %123, i64 %124, i32 %125, i32* null, i32* null, i32 %129, i32 1, i32 %130, i32 0, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %91
  br label %224

136:                                              ; preds = %91
  %137 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %138 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %142 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %143 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %146 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %145, i32 0, i32 6
  %147 = bitcast %struct.scb** %146 to i8**
  %148 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %149 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %150 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %149, i32 0, i32 7
  %151 = call i64 @ahc_dmamem_alloc(%struct.ahc_softc* %141, i32 %144, i8** %147, i32 %148, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %136
  br label %224

154:                                              ; preds = %136
  %155 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %156 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %160 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %161 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %164 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %167 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %166, i32 0, i32 6
  %168 = load %struct.scb*, %struct.scb** %167, align 8
  %169 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @ahc_dmamap_cb, align 4
  %174 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %175 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %174, i32 0, i32 5
  %176 = call i32 @ahc_dmamap_load(%struct.ahc_softc* %159, i32 %162, i32 %165, %struct.scb* %168, i32 %172, i32 %173, i32* %175, i32 0)
  %177 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %178 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %182 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %183 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %186 = add nsw i64 %185, 1
  %187 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %188 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %191 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %192 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %191, i32 0, i32 4
  %193 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %181, i32 %184, i32 8, i64 %186, i64 %187, i32 %188, i32* null, i32* null, i32 %189, i32 1, i32 %190, i32 0, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %154
  br label %224

196:                                              ; preds = %154
  %197 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %198 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %202 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %201, i32 0, i32 2
  %203 = load %struct.scb*, %struct.scb** %202, align 8
  %204 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = trunc i64 %206 to i32
  %208 = call i32 @memset(%struct.scb* %203, i32 0, i32 %207)
  %209 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %210 = call i32 @ahc_alloc_scbs(%struct.ahc_softc* %209)
  %211 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %212 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %196
  %216 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %217 = call i8* @ahc_name(%struct.ahc_softc* %216)
  %218 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %217)
  br label %224

219:                                              ; preds = %196
  %220 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %221 = call i32 @ahc_get_scb(%struct.ahc_softc* %220)
  %222 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  store i32 0, i32* %2, align 4
  br label %226

224:                                              ; preds = %215, %195, %153, %135, %90, %72
  %225 = load i32, i32* @ENOMEM, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %219, %49, %28
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.scb*, i32, i32) #1

declare dso_local i64 @ahc_probe_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_dma_tag_create(%struct.ahc_softc*, i32, i32, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ahc_dmamem_alloc(%struct.ahc_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @ahc_dmamap_load(%struct.ahc_softc*, i32, i32, %struct.scb*, i32, i32, i32*, i32) #1

declare dso_local i32 @ahc_alloc_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_get_scb(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
