; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_scratch_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_scratch_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.page* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @setup_scratch_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_scratch_page(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @GFP_DMA32, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @__GFP_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.page* @alloc_page(i32 %14)
  store %struct.page* %15, %struct.page** %5, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = icmp eq %struct.page* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @get_page(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @set_pages_uc(%struct.page* %24, i32 1)
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @page_to_phys(%struct.page* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.page* %28, %struct.page** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_pages_uc(%struct.page*, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
