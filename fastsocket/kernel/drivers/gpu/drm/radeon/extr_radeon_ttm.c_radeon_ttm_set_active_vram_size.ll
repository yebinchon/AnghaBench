; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_set_active_vram_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_set_active_vram_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ttm_set_active_vram_size(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %16, align 8
  %18 = load i64, i64* @TTM_PL_VRAM, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %17, i64 %18
  store %struct.ttm_mem_type_manager* %19, %struct.ttm_mem_type_manager** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
