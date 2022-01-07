; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_gart_manager_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_gart_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i32, i64, %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* @nouveau_gart_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gart_manager_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_placement* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = icmp sge i32 %15, 536870912
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %39

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nouveau_mem* @kzalloc(i32 4, i32 %24)
  store %struct.nouveau_mem* %25, %struct.nouveau_mem** %10, align 8
  %26 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %27 = icmp ne %struct.nouveau_mem* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %33 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %32, i32 0, i32 0
  store i32 12, i32* %33, align 4
  %34 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %35 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %35, i32 0, i32 2
  store %struct.nouveau_mem* %34, %struct.nouveau_mem** %36, align 8
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %28, %20
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nouveau_mem* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
