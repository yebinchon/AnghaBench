; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* @nv04_gart_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gart_manager_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_placement* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nouveau_mem* @kzalloc(i32 16, i32 %12)
  store %struct.nouveau_mem* %13, %struct.nouveau_mem** %10, align 8
  %14 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %15 = icmp ne %struct.nouveau_mem* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %20, i32 0, i32 0
  store i32 12, i32* %21, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 12
  %29 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %30 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %33 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %34 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = call i32 @nouveau_vm_get(i32 %24, i32 %28, i32 %31, i32 %32, %struct.TYPE_2__* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %19
  %41 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %42 = call i32 @kfree(%struct.nouveau_mem* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %19
  %45 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %46 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %47 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %46, i32 0, i32 2
  store %struct.nouveau_mem* %45, %struct.nouveau_mem** %47, align 8
  %48 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %49 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %57 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %44, %40, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.nouveau_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_vm_get(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nouveau_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
