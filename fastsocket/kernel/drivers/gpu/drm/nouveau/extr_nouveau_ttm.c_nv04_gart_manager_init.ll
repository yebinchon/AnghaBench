; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.nouveau_vm*, i32 }
%struct.nouveau_vm = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_vmmgr = type { i32 }
%struct.nv04_vmmgr_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i64)* @nv04_gart_manager_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gart_manager_init(%struct.ttm_mem_type_manager* %0, i64 %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_vmmgr*, align 8
  %7 = alloca %struct.nv04_vmmgr_priv*, align 8
  %8 = alloca %struct.nouveau_vm*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_drm* @nouveau_bdev(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %5, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_vmmgr* @nouveau_vmmgr(i32 %15)
  store %struct.nouveau_vmmgr* %16, %struct.nouveau_vmmgr** %6, align 8
  %17 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %6, align 8
  %18 = bitcast %struct.nouveau_vmmgr* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %19, %struct.nv04_vmmgr_priv** %7, align 8
  store %struct.nouveau_vm* null, %struct.nouveau_vm** %8, align 8
  %20 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %7, align 8
  %21 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nouveau_vm_ref(i32 %22, %struct.nouveau_vm** %8, i32* null)
  %24 = load %struct.nouveau_vm*, %struct.nouveau_vm** %8, align 8
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %25, i32 0, i32 0
  store %struct.nouveau_vm* %24, %struct.nouveau_vm** %26, align 8
  ret i32 0
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_vmmgr* @nouveau_vmmgr(i32) #1

declare dso_local i32 @nouveau_vm_ref(i32, %struct.nouveau_vm**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
