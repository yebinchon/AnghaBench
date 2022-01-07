; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.drm_device* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.drm_device = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@ENABLED = common dso_local global i64 0, align 8
@nouveau_bo_driver = common dso_local global i32 0, align 4
@DRM_FILE_PAGE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error initialising bo driver, %d\0A\00", align 1
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VRAM mm init failed, %d\0A\00", align 1
@DRM_MTRR_WC = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"GART mm init failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VRAM: %d MiB\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"GART: %d MiB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ttm_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %7 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %7, i32 0, i32 4
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_16__* @nouveau_vmmgr(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ENABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DMA_BIT_MASK(i32 %26)
  %28 = call i32 @pci_dma_supported(i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22, %1
  store i32 32, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DMA_BIT_MASK(i32 %35)
  %37 = call i32 @pci_set_dma_mask(i32 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %211

42:                                               ; preds = %31
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @DMA_BIT_MASK(i32 %46)
  %48 = call i32 @pci_set_consistent_dma_mask(i32 %45, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DMA_BIT_MASK(i32 32)
  %56 = call i32 @pci_set_consistent_dma_mask(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %42
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %59 = call i32 @nouveau_ttm_global_init(%struct.nouveau_drm* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %211

64:                                               ; preds = %57
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %69 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DRM_FILE_PAGE_OFFSET, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 32
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = call i32 @ttm_bo_device_init(i32* %67, i32 %73, i32* @nouveau_bo_driver, i32 %74, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @NV_ERROR(%struct.nouveau_drm* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %211

87:                                               ; preds = %64
  %88 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %89 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.TYPE_18__* @nouveau_fb(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %96 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %99 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.TYPE_17__* @nouveau_instmem(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %105 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %103
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 8
  %111 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %112 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* @TTM_PL_VRAM, align 4
  %115 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %116 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = call i32 @ttm_bo_init_mm(i32* %113, i32 %114, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %87
  %125 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @NV_ERROR(%struct.nouveau_drm* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %211

129:                                              ; preds = %87
  %130 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %131 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pci_resource_start(i32 %132, i32 1)
  %134 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %135 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @pci_resource_len(i32 %136, i32 1)
  %138 = load i32, i32* @DRM_MTRR_WC, align 4
  %139 = call i32 @drm_mtrr_add(i32 %133, i32 %137, i32 %138)
  %140 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %141 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %144 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ENABLED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %129
  %150 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %151 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.TYPE_16__* @nouveau_vmmgr(i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %157 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %160 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 536870912
  br i1 %163, label %164, label %168

164:                                              ; preds = %149
  %165 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %166 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i32 536870912, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %149
  br label %177

169:                                              ; preds = %129
  %170 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %171 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %175 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %169, %168
  %178 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %179 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* @TTM_PL_TT, align 4
  %182 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %183 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PAGE_SHIFT, align 4
  %187 = ashr i32 %185, %186
  %188 = call i32 @ttm_bo_init_mm(i32* %180, i32 %181, i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %177
  %192 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @NV_ERROR(%struct.nouveau_drm* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %211

196:                                              ; preds = %177
  %197 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %198 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %199 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %201, 20
  %203 = call i32 @NV_INFO(%struct.nouveau_drm* %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %205 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %206 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = ashr i32 %208, 20
  %210 = call i32 @NV_INFO(%struct.nouveau_drm* %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %196, %191, %124, %82, %62, %40
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_16__* @nouveau_vmmgr(i32) #1

declare dso_local i32 @pci_dma_supported(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_dma_mask(i32, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(i32, i32) #1

declare dso_local i32 @nouveau_ttm_global_init(%struct.nouveau_drm*) #1

declare dso_local i32 @ttm_bo_device_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @nouveau_fb(i32) #1

declare dso_local %struct.TYPE_17__* @nouveau_instmem(i32) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i32) #1

declare dso_local i32 @drm_mtrr_add(i32, i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
