; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_map_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_map_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_vm = type { i32 }
%struct.nouveau_vma = type { i32 }
%struct.nouveau_instobj = type { i32 }
%struct.nouveau_mem = type { i32 }

@NV_MEMOBJ_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpuobj_map_vm(%struct.nouveau_gpuobj* %0, %struct.nouveau_vm* %1, i32 %2, %struct.nouveau_vma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_gpuobj*, align 8
  %7 = alloca %struct.nouveau_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_vma*, align 8
  %10 = alloca %struct.nouveau_instobj*, align 8
  %11 = alloca %struct.nouveau_mem**, align 8
  %12 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %6, align 8
  store %struct.nouveau_vm* %1, %struct.nouveau_vm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nouveau_vma* %3, %struct.nouveau_vma** %9, align 8
  %13 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %14 = call i32 @nv_object(%struct.nouveau_gpuobj* %13)
  %15 = load i32, i32* @NV_MEMOBJ_CLASS, align 4
  %16 = call i64 @nv_pclass(i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nouveau_instobj*
  store %struct.nouveau_instobj* %18, %struct.nouveau_instobj** %10, align 8
  %19 = load %struct.nouveau_instobj*, %struct.nouveau_instobj** %10, align 8
  %20 = getelementptr inbounds %struct.nouveau_instobj, %struct.nouveau_instobj* %19, i64 1
  %21 = bitcast %struct.nouveau_instobj* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nouveau_mem**
  store %struct.nouveau_mem** %22, %struct.nouveau_mem*** %11, align 8
  %23 = load %struct.nouveau_vm*, %struct.nouveau_vm** %7, align 8
  %24 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %29 = call i32 @nouveau_vm_get(%struct.nouveau_vm* %23, i32 %26, i32 12, i32 %27, %struct.nouveau_vma* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %36 = load %struct.nouveau_mem**, %struct.nouveau_mem*** %11, align 8
  %37 = load %struct.nouveau_mem*, %struct.nouveau_mem** %36, align 8
  %38 = call i32 @nouveau_vm_map(%struct.nouveau_vma* %35, %struct.nouveau_mem* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @nv_pclass(i32, i32) #1

declare dso_local i32 @nv_object(%struct.nouveau_gpuobj*) #1

declare dso_local i32 @nouveau_vm_get(%struct.nouveau_vm*, i32, i32, i32, %struct.nouveau_vma*) #1

declare dso_local i32 @nouveau_vm_map(%struct.nouveau_vma*, %struct.nouveau_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
