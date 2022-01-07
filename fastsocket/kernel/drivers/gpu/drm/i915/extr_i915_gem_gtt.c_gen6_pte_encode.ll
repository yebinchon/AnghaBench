; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_pte_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_pte_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@GEN6_PTE_VALID = common dso_local global i32 0, align 4
@GEN6_PTE_CACHE_LLC = common dso_local global i32 0, align 4
@GEN6_PTE_CACHE_LLC_MLC = common dso_local global i32 0, align 4
@HSW_PTE_UNCACHED = common dso_local global i32 0, align 4
@GEN6_PTE_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @gen6_pte_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_pte_encode(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GEN6_PTE_VALID, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @GEN6_PTE_ADDR_ENCODE(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %44 [
    i32 129, label %14
    i32 130, label %27
    i32 128, label %31
  ]

14:                                               ; preds = %3
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call i32 @IS_HASWELL(%struct.drm_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @GEN6_PTE_CACHE_LLC, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @GEN6_PTE_CACHE_LLC_MLC, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* @GEN6_PTE_CACHE_LLC, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i32 @IS_HASWELL(%struct.drm_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @HSW_PTE_UNCACHED, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @GEN6_PTE_UNCACHED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %46

44:                                               ; preds = %3
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %43, %27, %26
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @GEN6_PTE_ADDR_ENCODE(i32) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
