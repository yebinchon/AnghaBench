; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_base.c_nouveau_dmaobj_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_base.c_nouveau_dmaobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_dmaeng = type { i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj**)* }
%struct.nouveau_gpuobj = type { i32, i32, i32, i32, i32 }
%struct.nouveau_dmaobj = type { i32, i32, i32, i32, i32 }
%struct.nv_dma_class = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_DMA_TARGET_MASK = common dso_local global i32 0, align 4
@NV_MEM_TARGET_VM = common dso_local global i32 0, align 4
@NV_MEM_TARGET_VRAM = common dso_local global i32 0, align 4
@NV_MEM_TARGET_PCI = common dso_local global i32 0, align 4
@NV_MEM_TARGET_PCI_NOSNOOP = common dso_local global i32 0, align 4
@NV_DMA_ACCESS_MASK = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_VM = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RO = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_WO = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nouveau_dmaobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_dmaobj_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_dmaeng*, align 8
  %15 = alloca %struct.nouveau_dmaobj*, align 8
  %16 = alloca %struct.nouveau_gpuobj*, align 8
  %17 = alloca %struct.nv_dma_class*, align 8
  %18 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %20 = bitcast %struct.nouveau_object* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nouveau_dmaeng*
  store %struct.nouveau_dmaeng* %21, %struct.nouveau_dmaeng** %14, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.nv_dma_class*
  store %struct.nv_dma_class* %23, %struct.nv_dma_class** %17, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %134

30:                                               ; preds = %6
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %33 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %34 = bitcast %struct.nouveau_dmaobj** %15 to %struct.nouveau_gpuobj**
  %35 = call i32 @nouveau_object_create(%struct.nouveau_object* %31, %struct.nouveau_object* %32, %struct.nouveau_oclass* %33, i32 0, %struct.nouveau_gpuobj** %34)
  store i32 %35, i32* %18, align 4
  %36 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %37 = bitcast %struct.nouveau_dmaobj* %36 to %struct.nouveau_gpuobj*
  %38 = call %struct.nouveau_object* @nv_object(%struct.nouveau_gpuobj* %37)
  %39 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %38, %struct.nouveau_object** %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %7, align 4
  br label %134

44:                                               ; preds = %30
  %45 = load %struct.nv_dma_class*, %struct.nv_dma_class** %17, align 8
  %46 = getelementptr inbounds %struct.nv_dma_class, %struct.nv_dma_class* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NV_DMA_TARGET_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %66 [
    i32 129, label %50
    i32 128, label %54
    i32 131, label %58
    i32 130, label %62
    i32 132, label %62
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* @NV_MEM_TARGET_VM, align 4
  %52 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %53 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %69

54:                                               ; preds = %44
  %55 = load i32, i32* @NV_MEM_TARGET_VRAM, align 4
  %56 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %57 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  br label %69

58:                                               ; preds = %44
  %59 = load i32, i32* @NV_MEM_TARGET_PCI, align 4
  %60 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %61 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %69

62:                                               ; preds = %44, %44
  %63 = load i32, i32* @NV_MEM_TARGET_PCI_NOSNOOP, align 4
  %64 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %65 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %44
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %134

69:                                               ; preds = %62, %58, %54, %50
  %70 = load %struct.nv_dma_class*, %struct.nv_dma_class** %17, align 8
  %71 = getelementptr inbounds %struct.nv_dma_class, %struct.nv_dma_class* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NV_DMA_ACCESS_MASK, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %91 [
    i32 134, label %75
    i32 136, label %79
    i32 133, label %83
    i32 135, label %87
  ]

75:                                               ; preds = %69
  %76 = load i32, i32* @NV_MEM_ACCESS_VM, align 4
  %77 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %78 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %94

79:                                               ; preds = %69
  %80 = load i32, i32* @NV_MEM_ACCESS_RO, align 4
  %81 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %82 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %94

83:                                               ; preds = %69
  %84 = load i32, i32* @NV_MEM_ACCESS_WO, align 4
  %85 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %86 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %94

87:                                               ; preds = %69
  %88 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %89 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %90 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %94

91:                                               ; preds = %69
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %134

94:                                               ; preds = %87, %83, %79, %75
  %95 = load %struct.nv_dma_class*, %struct.nv_dma_class** %17, align 8
  %96 = getelementptr inbounds %struct.nv_dma_class, %struct.nv_dma_class* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %99 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.nv_dma_class*, %struct.nv_dma_class** %17, align 8
  %101 = getelementptr inbounds %struct.nv_dma_class, %struct.nv_dma_class* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %104 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.nv_dma_class*, %struct.nv_dma_class** %17, align 8
  %106 = getelementptr inbounds %struct.nv_dma_class, %struct.nv_dma_class* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %109 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %111 = call i32 @nv_mclass(%struct.nouveau_object* %110)
  switch i32 %111, label %113 [
    i32 137, label %112
  ]

112:                                              ; preds = %94
  br label %132

113:                                              ; preds = %94
  %114 = load %struct.nouveau_dmaeng*, %struct.nouveau_dmaeng** %14, align 8
  %115 = getelementptr inbounds %struct.nouveau_dmaeng, %struct.nouveau_dmaeng* %114, i32 0, i32 0
  %116 = load i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj**)*, i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj**)** %115, align 8
  %117 = load %struct.nouveau_dmaeng*, %struct.nouveau_dmaeng** %14, align 8
  %118 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %119 = load %struct.nouveau_object*, %struct.nouveau_object** %118, align 8
  %120 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %15, align 8
  %121 = bitcast %struct.nouveau_dmaobj* %120 to %struct.nouveau_gpuobj*
  %122 = call i32 %116(%struct.nouveau_dmaeng* %117, %struct.nouveau_object* %119, %struct.nouveau_gpuobj* %121, %struct.nouveau_gpuobj** %16)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %113
  %126 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %127 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %126)
  %128 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %16, align 8
  %129 = call %struct.nouveau_object* @nv_object(%struct.nouveau_gpuobj* %128)
  %130 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %129, %struct.nouveau_object** %130, align 8
  br label %131

131:                                              ; preds = %125, %113
  br label %132

132:                                              ; preds = %131, %112
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %132, %91, %66, %42, %27
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @nouveau_object_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nouveau_gpuobj**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_gpuobj*) #1

declare dso_local i32 @nv_mclass(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
