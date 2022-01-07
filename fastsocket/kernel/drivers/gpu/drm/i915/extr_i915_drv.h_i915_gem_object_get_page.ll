; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@SG_MAX_SINGLE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.drm_i915_gem_object*, i32)* @i915_gem_object_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %11, %struct.scatterlist** %5, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %27, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %21
  %28 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %29 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i64 %30
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 -1
  %33 = call %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist* %32)
  store %struct.scatterlist* %33, %struct.scatterlist** %5, align 8
  %34 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %17

42:                                               ; preds = %26, %17
  %43 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i64 %45
  %47 = call %struct.page* @sg_page(%struct.scatterlist* %46)
  ret %struct.page* %47
}

declare dso_local %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
