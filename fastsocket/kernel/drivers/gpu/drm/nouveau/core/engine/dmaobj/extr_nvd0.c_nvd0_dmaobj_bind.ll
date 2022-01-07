; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nvd0.c_nvd0_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/dmaobj/extr_nvd0.c_nvd0_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_dmaeng = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_dmaobj = type { i32, i32, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_ENABLE = common dso_local global i32 0, align 4
@NV_MEM_TARGET_VM = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_TYPE_VM = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_PAGE_LP = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_TYPE_LINEAR = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_PAGE_SP = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_TYPE = common dso_local global i32 0, align 4
@NVD0_DMA_CONF0_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.nouveau_dmaobj*, %struct.nouveau_gpuobj**)* @nvd0_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_dmaobj_bind(%struct.nouveau_dmaeng* %0, %struct.nouveau_object* %1, %struct.nouveau_dmaobj* %2, %struct.nouveau_gpuobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_dmaeng*, align 8
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_dmaobj*, align 8
  %9 = alloca %struct.nouveau_gpuobj**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_dmaeng* %0, %struct.nouveau_dmaeng** %6, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_dmaobj* %2, %struct.nouveau_dmaobj** %8, align 8
  store %struct.nouveau_gpuobj** %3, %struct.nouveau_gpuobj*** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %13 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %14 = call i32 @nv_iclass(%struct.nouveau_object* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nv_mclass(i32 %19)
  switch i32 %20, label %22 [
    i32 134, label %21
    i32 132, label %21
    i32 133, label %21
    i32 131, label %21
    i32 129, label %21
    i32 130, label %21
  ]

21:                                               ; preds = %16, %16, %16, %16, %16, %16
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %21
  br label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %126

27:                                               ; preds = %25
  %28 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %29 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NVD0_DMA_CONF0_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %27
  %35 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %36 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NV_MEM_TARGET_VM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @NVD0_DMA_CONF0_TYPE_VM, align 4
  %42 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %43 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @NVD0_DMA_CONF0_PAGE_LP, align 4
  %47 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %48 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %62

51:                                               ; preds = %34
  %52 = load i32, i32* @NVD0_DMA_CONF0_TYPE_LINEAR, align 4
  %53 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %54 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @NVD0_DMA_CONF0_PAGE_SP, align 4
  %58 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %59 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %51, %40
  br label %63

63:                                               ; preds = %62, %27
  %64 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %65 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NVD0_DMA_CONF0_TYPE, align 4
  %68 = and i32 %66, %67
  %69 = shl i32 %68, 20
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %73 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NVD0_DMA_CONF0_PAGE, align 4
  %76 = and i32 %74, %75
  %77 = ashr i32 %76, 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %81 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %86 [
    i32 128, label %83
  ]

83:                                               ; preds = %63
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, 9
  store i32 %85, i32* %10, align 4
  br label %89

86:                                               ; preds = %63
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %126

89:                                               ; preds = %83
  %90 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %91 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %92 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %93 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %90, %struct.nouveau_object* %91, i32 24, i32 32, i32 0, %struct.nouveau_gpuobj** %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %89
  %97 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %98 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %98, i32 0, i32 %99)
  %101 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %102 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %101, align 8
  %103 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %104 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %102, i32 4, i32 %106)
  %108 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %109 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %108, align 8
  %110 = load %struct.nouveau_dmaobj*, %struct.nouveau_dmaobj** %8, align 8
  %111 = getelementptr inbounds %struct.nouveau_dmaobj, %struct.nouveau_dmaobj* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %109, i32 8, i32 %113)
  %115 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %116 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %115, align 8
  %117 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %116, i32 12, i32 0)
  %118 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %119 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %118, align 8
  %120 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %119, i32 16, i32 0)
  %121 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %9, align 8
  %122 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %121, align 8
  %123 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %122, i32 20, i32 0)
  br label %124

124:                                              ; preds = %96, %89
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %86, %26, %22
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_mclass(i32) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
