; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_clear_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_ppgtt = type { i32*, i32, i32 }

@I915_PPGTT_PT_ENTRIES = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_hw_ppgtt*, i32, i32)* @gen6_ppgtt_clear_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_ppgtt_clear_range(%struct.i915_hw_ppgtt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i915_hw_ppgtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i915_hw_ppgtt* %0, %struct.i915_hw_ppgtt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %15 = udiv i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %20 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %23 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I915_CACHE_LLC, align 4
  %26 = call i32 @gen6_pte_encode(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %63, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %41 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KM_USER0, align 4
  %48 = call i32* @kmap_atomic(i32 %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %60, %39
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %50

63:                                               ; preds = %50
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @KM_USER0, align 4
  %66 = call i32 @kunmap_atomic(i32* %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %27

74:                                               ; preds = %27
  ret void
}

declare dso_local i32 @gen6_pte_encode(i32, i32, i32) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
