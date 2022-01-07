; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv04.c_nv04_vmmgr_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv04.c_nv04_vmmgr_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_vmmgr_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"PCIGART\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pcigart\00", align 1
@nv04_vm_create = common dso_local global i32 0, align 4
@NV04_PDMA_SIZE = common dso_local global i32 0, align 4
@nv04_vm_map_sg = common dso_local global i32 0, align 4
@nv04_vm_unmap = common dso_local global i32 0, align 4
@nv04_vm_flush = common dso_local global i32 0, align 4
@NV04_PDMA_PAGE = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_vmmgr_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_vmmgr_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_vmmgr_priv*, align 8
  %15 = alloca %struct.nouveau_gpuobj*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %19 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %20 = call i32 @nouveau_vmmgr_create(%struct.nouveau_object* %17, %struct.nouveau_object* %18, %struct.nouveau_oclass* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.nv04_vmmgr_priv** %14)
  store i32 %20, i32* %16, align 4
  %21 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %22 = call %struct.nouveau_object* @nv_object(%struct.nv04_vmmgr_priv* %21)
  %23 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %22, %struct.nouveau_object** %23, align 8
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %7, align 4
  br label %119

28:                                               ; preds = %6
  %29 = load i32, i32* @nv04_vm_create, align 4
  %30 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %31 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @NV04_PDMA_SIZE, align 4
  %34 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %35 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %38 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 32, i32* %39, align 4
  %40 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 20, i32* %42, align 8
  %43 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %44 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 12, i32* %45, align 4
  %46 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %47 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 12, i32* %48, align 8
  %49 = load i32, i32* @nv04_vm_map_sg, align 4
  %50 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %51 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @nv04_vm_unmap, align 4
  %54 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %55 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @nv04_vm_flush, align 4
  %58 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %59 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %62 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %61, i32 0, i32 1
  %63 = load i32, i32* @NV04_PDMA_SIZE, align 4
  %64 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %65 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %64, i32 0, i32 0
  %66 = call i32 @nouveau_vm_create(%struct.TYPE_5__* %62, i32 0, i32 %63, i32 0, i32 4096, %struct.TYPE_6__** %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %28
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %7, align 4
  br label %119

71:                                               ; preds = %28
  %72 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %73 = load i32, i32* @NV04_PDMA_SIZE, align 4
  %74 = load i32, i32* @NV04_PDMA_PAGE, align 4
  %75 = sdiv i32 %73, %74
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %76, 8
  %78 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %79 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %80 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %85, align 8
  %87 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %86, i64 0
  %88 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %72, i32* null, i32 %77, i32 16, i32 %78, %struct.nouveau_gpuobj** %87)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %90 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %95, align 8
  %97 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %96, i64 0
  %98 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %97, align 8
  store %struct.nouveau_gpuobj* %98, %struct.nouveau_gpuobj** %15, align 8
  %99 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %14, align 8
  %100 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %71
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %7, align 4
  br label %119

112:                                              ; preds = %71
  %113 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  %114 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %113, i32 0, i32 135229)
  %115 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  %116 = load i32, i32* @NV04_PDMA_SIZE, align 4
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %115, i32 4, i32 %117)
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %112, %110, %69, %26
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @nouveau_vmmgr_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i8*, %struct.nv04_vmmgr_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_vmmgr_priv*) #1

declare dso_local i32 @nouveau_vm_create(%struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
