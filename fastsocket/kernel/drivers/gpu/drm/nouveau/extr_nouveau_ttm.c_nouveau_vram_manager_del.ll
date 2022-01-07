; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_fb.0*, %struct.nouveau_mem**)* }
%struct.nouveau_fb.0 = type opaque
%struct.nouveau_mem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* @nouveau_vram_manager_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_vram_manager_del(%struct.ttm_mem_type_manager* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %7 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_bdev(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %5, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nouveau_fb* @nouveau_fb(i32 %13)
  store %struct.nouveau_fb* %14, %struct.nouveau_fb** %6, align 8
  %15 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nouveau_mem_node_cleanup(i32 %17)
  %19 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nouveau_fb.0*, %struct.nouveau_mem**)*, i32 (%struct.nouveau_fb.0*, %struct.nouveau_mem**)** %21, align 8
  %23 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %24 = bitcast %struct.nouveau_fb* %23 to %struct.nouveau_fb.0*
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.nouveau_mem**
  %28 = call i32 %22(%struct.nouveau_fb.0* %24, %struct.nouveau_mem** %27)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local i32 @nouveau_mem_node_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
