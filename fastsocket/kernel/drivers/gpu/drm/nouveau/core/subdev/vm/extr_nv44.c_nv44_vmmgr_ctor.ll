; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vmmgr_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vmmgr_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.nv04_vmmgr_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NvPCIE\00", align 1
@nv04_vmmgr_oclass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PCIEGART\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pciegart\00", align 1
@nv04_vm_create = common dso_local global i32 0, align 4
@NV44_GART_SIZE = common dso_local global i32 0, align 4
@nv44_vm_map_sg = common dso_local global i32 0, align 4
@nv44_vm_unmap = common dso_local global i32 0, align 4
@nv44_vm_flush = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to allocate dummy pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NV44_GART_PAGE = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv44_vmmgr_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_vmmgr_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nv04_vmmgr_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %14, align 8
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %20 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %23 = call i64 @pci_find_capability(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %27 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nouveau_boolopt(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25, %6
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %37 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %32, %struct.nouveau_object* %33, i32* @nv04_vmmgr_oclass, i8* %34, i32 %35, %struct.nouveau_object** %36)
  store i32 %37, i32* %7, align 4
  br label %142

38:                                               ; preds = %25
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %40 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %41 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %42 = call i32 @nouveau_vmmgr_create(%struct.nouveau_object* %39, %struct.nouveau_object* %40, %struct.nouveau_oclass* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.nv04_vmmgr_priv** %15)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %44 = call %struct.nouveau_object* @nv_object(%struct.nv04_vmmgr_priv* %43)
  %45 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %44, %struct.nouveau_object** %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %7, align 4
  br label %142

50:                                               ; preds = %38
  %51 = load i32, i32* @nv04_vm_create, align 4
  %52 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %53 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @NV44_GART_SIZE, align 4
  %56 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %57 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %60 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 39, i32* %61, align 4
  %62 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %63 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 20, i32* %64, align 8
  %65 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %66 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i32 12, i32* %67, align 4
  %68 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %69 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 12, i32* %70, align 8
  %71 = load i32, i32* @nv44_vm_map_sg, align 4
  %72 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %73 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @nv44_vm_unmap, align 4
  %76 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %77 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @nv44_vm_flush, align 4
  %80 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %81 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 4
  %83 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %84 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %87 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %86, i32 0, i32 3
  %88 = call i32 @pci_alloc_consistent(i32 %85, i32 16384, i32* %87)
  %89 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %90 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %92 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %50
  %96 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %97 = call i32 @nv_error(%struct.nv04_vmmgr_priv* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %142

100:                                              ; preds = %50
  %101 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %102 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %101, i32 0, i32 1
  %103 = load i32, i32* @NV44_GART_SIZE, align 4
  %104 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %105 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %104, i32 0, i32 0
  %106 = call i32 @nouveau_vm_create(%struct.TYPE_5__* %102, i32 0, i32 %103, i32 0, i32 4096, %struct.TYPE_6__** %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %7, align 4
  br label %142

111:                                              ; preds = %100
  %112 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %113 = load i32, i32* @NV44_GART_SIZE, align 4
  %114 = load i32, i32* @NV44_GART_PAGE, align 4
  %115 = sdiv i32 %113, %114
  %116 = mul nsw i32 %115, 4
  %117 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %118 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %119 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %112, i32* null, i32 %116, i32 524288, i32 %117, i32* %126)
  store i32 %127, i32* %16, align 4
  %128 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %15, align 8
  %129 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %111
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %7, align 4
  br label %142

141:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %141, %139, %109, %95, %48, %31
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i64 @pci_find_capability(i32, i32) #1

declare dso_local i32 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local i32 @nouveau_object_ctor(%struct.nouveau_object*, %struct.nouveau_object*, i32*, i8*, i32, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_vmmgr_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i8*, %struct.nv04_vmmgr_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_vmmgr_priv*) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @nv_error(%struct.nv04_vmmgr_priv*, i8*) #1

declare dso_local i32 @nouveau_vm_create(%struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
